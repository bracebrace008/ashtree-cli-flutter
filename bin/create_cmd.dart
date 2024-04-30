import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';

import 'utils.dart';
import 'package:path/path.dart' as path;

class CreateCommand extends Command {
  @override
  final name = 'create';
  @override
  final description = 'Create something.';

  CreateCommand() {
    argParser.addOption('name', help: 'Name of the thing to create');
  }

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  @override
  void run() async {
    if (argResults?.rest.length == 0) {
      print('请输入项目名！');
      return;
    }
    var projectName = argResults!.rest[0];

    if (!isSnakeCase(projectName)) {
      print('项目名不符合规则！');
      return;
    }
    print('正在创建项目：$projectName');
    var destinationDir = Directory(projectName);
    if (destinationDir.existsSync()) {
      print('项目已存在！');
      return;
    }
    destinationDir.createSync();
    var progress = logger.progress('Generating project...');
    var scriptPath = path.dirname(path.fromUri(Platform.script));
    var templatePath =
        path.join(path.dirname(scriptPath), 'project_templates/bloc_go_hive');
    final generator = await MasonGenerator.fromBrick(Brick.path(templatePath));
    final target = DirectoryGeneratorTarget(Directory(projectName));
    final vars = <String, dynamic>{
      'projectName': projectName,
    };

    await generator.generate(target, vars: vars);
    progress.complete('project generated successfully!');
    print('项目创建完成！');
  }
}
