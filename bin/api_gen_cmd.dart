import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:yaml/yaml.dart';

class ApiItem {
  String path = '';
  String method = '';
  Map<String, dynamic> request = {};
  String? response;
}

class ApiGenCommand extends Command {
  @override
  final name = 'api_gen';
  @override
  final description = 'Generate API code.';

  ApiGenCommand() {}

  List<ApiItem> apiItems = [];

  String apiContent = '';

  var primeTypeMap = {
    'string': 'String',
    'integer': 'int',
    'number': 'double',
    'boolean': 'bool',
  };

  List<String> models = [];

  parseRequestScheme(Map<String, dynamic> scheme, Map<String, dynamic> objMap) {
    if (scheme['type'] == 'object') {
      scheme['properties'].forEach((key, value) {
        if (value['type'] == 'array') {
          objMap[key] = 'List<${primeTypeMap[value['items']['type']]}>';
        } else {
          objMap[key] = primeTypeMap[value['type']];
        }
      });
    }
  }

  parseResponseScheme(String responseRef) {
    String type = responseRef.split('/').last;
    late String resType;
    if (type.contains('MyPageData')) {
      resType = type.replaceAll('CommonResponseMyPageData', '');
    } else {
      resType = type.replaceAll('CommonResponse', '');
    }
    if (!['String', 'Int', 'Bool'].contains(resType)) {
      models.add(resType);
    }
    return type.contains('MyPageData') ? 'PageData<$resType>' : resType;
  }

  @override
  void run() async {
    var file = File('lib/api/client.json');
    String serviceName = file.path.split('.').first.split('/').last;
    bool isFileExist = await file.exists();
    if (!isFileExist) {
      print('File does not exist');
      return;
    }
    File pubspecFile = File('pubspec.yaml');
    var projectName = loadYaml(pubspecFile.readAsStringSync())['name'];
    apiContent += '''
      import 'package:$projectName/utils/http/http_request.dart';
      import 'package:$projectName/models/page_data/page_data.dart';
    ''';
    var content = await file.readAsString();
    var jsonData = jsonDecode(content);
    var paths = jsonData['paths'] as Map<String, dynamic>;
    paths.entries.forEach((element) {
      ApiItem apiItem = ApiItem();
      apiItem.path = element.key;
      apiItem.method = element.value.keys.first;
      var requestRef = element.value[element.value.keys.first]['requestBody']
          ['content']['application/json']['schema']['\$ref'];
      var responseRef = element.value[element.value.keys.first]['responses']
          ['200']['content']['*/*']['schema']['\$ref'];

      apiItem.response = parseResponseScheme(responseRef);
      if (requestRef != null) {
        Map<String, dynamic> objMap = {};
        var requestScheme =
            jsonData['components']['schemas'][requestRef.split('/').last];
        parseRequestScheme(requestScheme, objMap);
        apiItem.request = objMap;
      }
      apiItems.add(apiItem);
    });
    apiItems.forEach((element) {
      print(element.response);
      var requestParams = null;
      var requestData = null;
      if (element.request.entries.toList().isNotEmpty) {
        requestParams = element.request.entries
            .map((e) => '${e.value}? ${e.key}')
            .join(',');
        requestData = element.request.entries
            .map((e) => '\'${e.key}\': ${e.key}')
            .join(',');
      }
      apiContent += '''
        Future<${element.response}> ${element.path.camelCase}Api(${requestParams != null ? '{${requestParams},}' : ''}) async {
         final res = await HttpRequest().${element.method}(
          '/${serviceName + element.path}',
          ${requestData != null ? 'data:{$requestData},' : ''}
          );
          ${!element.response!.contains('PageData') ? 'return res.data' : 'return PageData.fromJson(res.data, (v) => ${RegExp(r'PageData<(.*)>').firstMatch(element.response!)!.group(1)}.fromJson(v))'};
         }
      ''';
    });
    print('models: $models');
    File apiFile = File('lib/api/api.dart');
    apiFile.writeAsStringSync(apiContent);
    await Process.run('dart', ['format', 'lib/api/api.dart']);
  }
}
