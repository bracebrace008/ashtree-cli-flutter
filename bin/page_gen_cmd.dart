import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';

class PageGenCommand extends Command {
  @override
  final name = 'page';
  @override
  final description = 'Generate new page';

  PageGenCommand() {}

  @override
  void run() async {
    print(Directory.current.absolute);
    final generator =
        await MasonGenerator.fromBrick(Brick.path('./page_templates'));

    final target = DirectoryGeneratorTarget(Directory.current);
    final vars = <String, dynamic>{
      'name': 'example',
    };

    await generator.generate(target, vars: vars);
  }
}
