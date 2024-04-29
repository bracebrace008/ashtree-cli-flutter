import 'dart:io';

import 'package:args/command_runner.dart';

Future replaceInFile(File file, String source, String target) async {
  if (file.path.endsWith('.dart') ||
      file.path.endsWith('.txt') ||
      file.path.endsWith('.json') ||
      file.path.endsWith('.yaml')) {
    String content = await file.readAsString();
    String newContent = content.replaceAll(source, target);
    await file.writeAsString(newContent);
  }
}

Future copyDirectory(
    Directory source, Directory destination, projectName) async {
  await for (var entity in source.list(recursive: false)) {
    if (entity is Directory) {
      var newDirectory = Directory(
          '${destination.absolute.path}/${entity.path.split('/').last}');
      await newDirectory.create();
      await copyDirectory(entity.absolute, newDirectory, projectName);
    } else if (entity is File) {
      await entity.copy('${destination.path}/${entity.path.split('/').last}');
      await replaceInFile(entity, 'bloc_go_router_hive', projectName);
    }
  }
}

bool isSnakeCase(String input) {
  final RegExp snakeCasePattern = RegExp(r'^[a-z]+(_[a-z]+)*$');
  return snakeCasePattern.hasMatch(input);
}

void main(List<String> arguments) {
  var runner = CommandRunner("my-cli", "A sample CLI application")
    ..addCommand(CreateCommand());

  runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64); // Exit code 64 indicates a usage error.
  });
}

class CreateCommand extends Command {
  @override
  final name = 'create';
  @override
  final description = 'Create something.';

  CreateCommand() {
    // You can add more command-specific arguments here
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
