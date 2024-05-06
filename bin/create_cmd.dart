import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:xml/xml.dart';

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

  addEasyLocalizatioConfig(String projectName) async {
    const plistPath = '/ios/Runner/Info.plist';
    final file = File(projectName + plistPath);
    final document = XmlDocument.parse(await file.readAsString());
    final dict = document.findAllElements('dict').first;
    final builder = XmlBuilder();
    builder.element('key', nest: () {
      builder.text('CFBundleLocalizations');
    });
    builder.element('array', nest: () {
      builder.element('string', nest: () {
        builder.text('en');
      });
      builder.element('string', nest: () {
        builder.text('zh');
      });
    });
    dict.children.add(builder.buildFragment());

    // 将修改后的 XML 文档写回文件
    await file.writeAsString(document.toXmlString(pretty: true, indent: '\t'));

    print('CFBundleLocalizations added successfully.');
  }

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
    var templatePath = path.join(
        path.dirname(scriptPath), 'templates/project_templates/bloc_go_hive');
    final generator = await MasonGenerator.fromBrick(Brick.path(templatePath));
    final target = DirectoryGeneratorTarget(Directory(projectName));
    final vars = <String, dynamic>{
      'projectName': projectName,
    };

    await generator.generate(target, vars: vars);
    await Process.run('flutter', ['create', '.'],
        workingDirectory: projectName);

    await addEasyLocalizatioConfig(projectName);

    progress.complete('project generated successfully!');
    print('项目创建完成！');
  }
}
