import 'dart:io';

import 'package:args/command_runner.dart';

import 'utils.dart';

class CreateCommand extends Command {
  @override
  final name = 'create';
  @override
  final description = 'Create something.';

  CreateCommand() {
    argParser.addOption('name', help: 'Name of the thing to create');
  }

  @override
  void run() {
    print('${argResults!.rest}');
    var projectName = argResults?.rest[0];

    if (projectName == null || projectName.isEmpty) {
      print('请输入项目名！');
      return;
    }
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
    var sourceDir = Directory('templates/bloc_go_router_hive');
    copyDirectory(sourceDir, destinationDir, projectName);
    print('项目创建完成！');
  }
}
