import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:translator/translator.dart';

class IntlTranslateCommand extends Command {
  @override
  final name = 'intlTranslate';
  @override
  final description = 'Translate intl messages to json files.';

  IntlTranslateCommand() {}

  List<String> _extractedTextList = [];

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  @override
  void run() async {
    var progress = logger.progress('Translating intl messages...');

    _extractedTextList = _extractedTextList.toSet().toList();

    final translator = GoogleTranslator();

    Map<String, dynamic> jsonMapEnUS = {};

    var zhCNFile = File('assets/translations/zh-CN-temp.json');
    Map<String, dynamic> jsonMapZh = {};
    try {
      String zhCNContent = zhCNFile.readAsStringSync();
      jsonMapZh = jsonDecode(zhCNContent);
    } catch (e) {}

    for (String key in jsonMapZh.keys) {
      await Future.delayed(Duration(milliseconds: 100));
      var tansObj =
          await translator.translate((jsonMapZh[key]), from: 'zh-cn', to: 'en');
      jsonMapEnUS[key] = tansObj.text.sentenceCase;
    }

    progress.update('Writing intl messages to json files...');
    JsonEncoder encoder = JsonEncoder.withIndent('  ');
    var enUSFile = File('assets/translations/en-US-temp.json');
    enUSFile.writeAsStringSync(encoder.convert(jsonMapEnUS));
    progress.complete('intl messages translate successfully!, '
        'please check the content in the '
        'assets/translations/en-US-temp.json files.');
  }
}
