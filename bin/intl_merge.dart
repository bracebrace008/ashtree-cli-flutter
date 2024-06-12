import 'dart:convert';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';

class IntlMergeCommand extends Command {
  @override
  final name = 'intlMerge';
  @override
  final description = 'Merge intl messages to json files.';

  IntlMergeCommand() {}

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  void mergeIntlMessages(String lang) {
    var progress = logger.progress('Merge intl messages...');
    progress.update('Translating intl messages...');

    var langFileTemp = File('assets/translations/${lang}-temp.json');
    var langFile = File('assets/translations/${lang}.json');
    Map<String, dynamic> jsonMapTemp = {};
    Map<String, dynamic> jsonMapOrigin = {};
    try {
      String tempContent = langFileTemp.readAsStringSync();
      jsonMapTemp = jsonDecode(tempContent);
      String content = langFile.readAsStringSync();
      jsonMapOrigin = jsonDecode(content);
    } catch (e) {}

    Map<String, dynamic> jsonMap = {};
    jsonMap.addAll(jsonMapTemp);
    jsonMap.addAll(jsonMapOrigin);

    progress.update('Writing intl messages to json files...');
    JsonEncoder encoder = JsonEncoder.withIndent('  ');
    langFile.writeAsStringSync(encoder.convert(jsonMap));

    progress.complete(
        'intl messages extracted successfully! Please check the content of ${lang}.json file.');
  }

  @override
  void run() async {
    mergeIntlMessages('zh-CN');
    mergeIntlMessages('en-US');
  }
}
