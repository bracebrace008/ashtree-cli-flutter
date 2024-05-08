import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:translator/translator.dart';

class IntlExtractCommand extends Command {
  @override
  final name = 'intlExtract';
  @override
  final description = 'Extract intl messages to json files.';

  IntlExtractCommand() {}

  List<String> _extractedTextList = [];

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  @override
  void run() async {
    var progress = logger.progress('Extracting intl messages...');
    Directory libDirectory = Directory('lib');
    List<File> dartFiles = libDirectory
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => file.path.endsWith('.dart'))
        .toList();

    for (var file in dartFiles) {
      var content = file.readAsStringSync();
      var regex = RegExp(r"'([\u4e00-\u9fff]+)'\.tr\(\)");
      var matches = regex.allMatches(content);
      for (var match in matches) {
        var extractedText = match.group(1);
        if (!_extractedTextList.contains(extractedText) &&
            extractedText != null) {
          _extractedTextList.add(extractedText);
        }
      }
    }

    progress.update('Translating intl messages...');

    final translator = GoogleTranslator();

    var tansObj = await translator.translate(_extractedTextList.join('|'),
        from: 'zh-cn', to: 'en');

    Map<String, dynamic> jsonMapZhCN = {};
    Map<String, dynamic> jsonMapEnUS = {};
    List<String> translatedTextList = tansObj.text.split('|');

    for (int i = 0; i < _extractedTextList.length; i++) {
      jsonMapZhCN[translatedTextList[i].camelCase] = _extractedTextList[i];
      jsonMapEnUS[translatedTextList[i].camelCase] =
          translatedTextList[i].sentenceCase;
    }

    progress.update('Writing intl messages to json files...');
    var zhCNFile = File('assets/translations/zh-CN.json');
    Map<String, dynamic> originJsonMapZhCn = {};
    try {
      String zhCNContent = zhCNFile.readAsStringSync();
      originJsonMapZhCn = jsonDecode(zhCNContent);
    } catch (e) {}
    jsonMapZhCN.addAll(originJsonMapZhCn);
    JsonEncoder encoder = JsonEncoder.withIndent('    ');
    zhCNFile.writeAsStringSync(encoder.convert(jsonMapZhCN));

    Map<String, dynamic> originJsonMapEnUS = {};
    var enUSFile = File('assets/translations/en-US.json');
    try {
      String enUSContent = enUSFile.readAsStringSync();
      originJsonMapEnUS = jsonDecode(enUSContent);
    } catch (e) {}
    jsonMapEnUS.addAll(originJsonMapEnUS);
    enUSFile.writeAsStringSync(encoder.convert(jsonMapEnUS));
    progress.complete('intl messages extracted successfully!');
  }
}
