import 'dart:convert';
import 'dart:io';
import 'package:collection/collection.dart';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';

class IntlReplaceCommand extends Command {
  @override
  String get name => 'intlReplace';

  @override
  String get description => 'Replace intl keys in the project';

  String? getKeyFromValue(Map<String, dynamic> map, String value) {
    return map.entries.firstWhereOrNull((entry) => entry.value == value)?.key;
  }

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  @override
  Future<void> run() async {
    var progress = logger.progress('Replacing intl keys...');
    var enUSFile = File('assets/translations/zh-CN.json');
    Map<String, dynamic> jsonMap = jsonDecode(enUSFile.readAsStringSync());
    Directory libDirectory = Directory('lib');
    List<File> dartFiles = libDirectory
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .toList();

    for (var file in dartFiles) {
      List<String> extractedTextList = [];
      var content = file.readAsStringSync();
      var regex = RegExp(r"'([\u4e00-\u9fff]+)'\.tr\(\)");
      var matches = regex.allMatches(content);
      for (var match in matches) {
        var extractedText = match.group(1);
        if (extractedText != null) {
          extractedTextList.add(extractedText);
        }
      }
      if (extractedTextList.isEmpty) {
        continue;
      }
      extractedTextList.forEach((element) {
        String? key = getKeyFromValue(jsonMap, element);
        if (key != null) {
          content = content.replaceAll("'$element'.tr()", "'$key'.tr()");
        }
      });
      file.writeAsStringSync(content);
    }
    progress.complete('Intl keys replaced successfully');
  }
}
