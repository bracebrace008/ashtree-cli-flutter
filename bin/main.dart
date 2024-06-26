import 'dart:io';

import 'package:args/command_runner.dart';

import 'api_gen_cmd.dart';
import 'create_cmd.dart';
import 'imgpath_gen_cmd.dart';
import 'intl_extract.dart';
import 'intl_merge.dart';
import 'intl_replace.dart';
import 'intl_translate.dart';
import 'page_gen_cmd.dart';

void main(List<String> arguments) {
  var runner = CommandRunner("my-cli", "A sample CLI application")
    ..addCommand(CreateCommand())
    ..addCommand(ImgPathGenCommand())
    ..addCommand(PageGenCommand())
    ..addCommand(ApiGenCommand())
    ..addCommand(IntlExtractCommand())
    ..addCommand(IntlTranslateCommand())
    ..addCommand(IntlMergeCommand())
    ..addCommand(IntlReplaceCommand());

  runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64); // Exit code 64 indicates a usage error.
  });
}
