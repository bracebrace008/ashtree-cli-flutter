import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

class PageGenCommand extends Command {
  @override
  final name = 'page';
  @override
  final description = 'Generate new page';

  PageGenCommand() {
    argParser.addOption('pageName', help: 'Name of the thing to create');
  }

  @override
  void run() async {
    final logger = Logger(
      level: Level.verbose,
      theme: LogTheme(),
    );
    if (argResults?.rest.length == 0) {
      print('请输入pageName！');
      return;
    }
    final pageType = logger.chooseOne(
      'please choose page type:',
      choices: ['stateless', 'stateful'],
    );
    var pageName = argResults?.rest[0];
    var progress = logger.progress('Generating page...');
    var scriptPath = path.dirname(path.fromUri(Platform.script));
    var templatePath = path.join(path.dirname(scriptPath), 'page_templates');
    final generator = await MasonGenerator.fromBrick(Brick.path(templatePath));

    final target = DirectoryGeneratorTarget(Directory.current);
    final vars = <String, dynamic>{
      'name': pageName,
      'stateless': pageType == 'stateless',
      'stateful': pageType == 'stateful',
    };

    await generator.generate(target, vars: vars);
    progress.complete('dsfasfaf');
  }
}
