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
        if (extractedText != null &&
            !_extractedTextList.contains(extractedText) &&
            extractedText.isNotEmpty &&
            extractedText.length < 10) {
          _extractedTextList.add(extractedText);
        }
      }
    }

    progress.update('Translating intl messages...');

    _extractedTextList = _extractedTextList.toSet().toList();

    final translator = GoogleTranslator();

    Map<String, dynamic> jsonMapZhCN = {};
    Map<String, dynamic> jsonMapEnUS = {};

    for (String text in _extractedTextList) {
      await Future.delayed(Duration(milliseconds: 100));
      var tansObj = await translator.translate((text), from: 'zh-cn', to: 'en');
      jsonMapZhCN[tansObj.text.camelCase] = text;
      jsonMapEnUS[tansObj.text.camelCase] = tansObj.text.sentenceCase;
    }

    progress.update('Writing intl messages to json files...');
    var zhCNFile = File('assets/translations/zh-CN.json');
    Map<String, dynamic> originJsonMapZhCn = {};
    try {
      String zhCNContent = zhCNFile.readAsStringSync();
      originJsonMapZhCn = jsonDecode(zhCNContent);
    } catch (e) {}
    jsonMapZhCN.entries.forEach((entry) {
      if (!originJsonMapZhCn.containsKey(entry.key)) {
        originJsonMapZhCn[entry.key] = entry.value;
      }
    });
    JsonEncoder encoder = JsonEncoder.withIndent('  ');
    zhCNFile.writeAsStringSync(encoder.convert(originJsonMapZhCn));

    Map<String, dynamic> originJsonMapEnUS = {};
    var enUSFile = File('assets/translations/en-US.json');
    try {
      String enUSContent = enUSFile.readAsStringSync();
      originJsonMapEnUS = jsonDecode(enUSContent);
    } catch (e) {}
    jsonMapEnUS.entries.forEach((entry) {
      if (!originJsonMapEnUS.containsKey(entry.key)) {
        originJsonMapEnUS[entry.key] = entry.value;
      }
    });
    enUSFile.writeAsStringSync(encoder.convert(originJsonMapEnUS));
    progress.complete('intl messages extracted successfully!');
  }
}
