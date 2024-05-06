import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';

class PageGenCommand extends Command {
  @override
  final name = 'page';
  @override
  final description = 'Generate new page';

  PageGenCommand() {
    argParser.addOption('pageName', help: 'Name of the thing to create');
  }

  final logger = Logger(
    level: Level.verbose,
    theme: LogTheme(),
  );

  generatePage({
    required Directory pageDir,
    required String pageName,
    required String pageType,
    required String projectName,
  }) async {
    final generator = await MasonGenerator.fromBrick(Brick.git(GitPath(
        'https://github.com/bracebrace008/ashtree-cli-flutter',
        path: 'templates/page_templates')));

    final target = DirectoryGeneratorTarget(pageDir);
    final vars = <String, dynamic>{
      'name': pageName,
      'projectName': projectName,
      'stateless': pageType == 'stateless',
      'stateful': pageType == 'stateful',
    };

    await generator.generate(target, vars: vars);
  }

  updateRouter(String pageName, String projectName) {
    final routerFile = File('lib/router/app_router.dart');
    String fileContent = routerFile.readAsStringSync();

    final routeTemplate = """
     GoRoute(
       path: ${pageName.camelCase}Path,
       parentNavigatorKey: rootNavigatorKey,
       builder: (context, state) => const ${pageName.pascalCase}Page(),
     ),
     """;

    fileContent = fileContent.replaceAllMapped(
        RegExp(r'\/\/ insert your route here\n', caseSensitive: false),
        (match) => '${match[0]}$routeTemplate');
    fileContent = fileContent.replaceAllMapped(
        RegExp(r'\/\/ import your pages here\n', caseSensitive: false),
        (match) =>
            '${match[0]}import \'package:$projectName/pages/${pageName.snakeCase}/${pageName.snakeCase}_page.dart\';\n');
    routerFile.writeAsStringSync(fileContent);

    final routerPathFile = File('lib/router/app_path.dart');
    String pathFileContent = routerPathFile.readAsStringSync();
    pathFileContent = pathFileContent.replaceAllMapped(
        RegExp(r'\/\/ insert your path here\n'),
        (match) =>
            '${match[0]}const String ${pageName.camelCase}Path = \'/${pageName.camelCase}\';\n');
    routerPathFile.writeAsStringSync(pathFileContent);
  }

  @override
  void run() async {
    if (argResults?.rest.length == 0) {
      print('请输入pageName！');
      return;
    }
    File file = File('pubspec.yaml');
    var pageName = argResults!.rest[0];
    var pageDir = Directory(path.join('lib/pages/', pageName.snakeCase));
    if (pageDir.existsSync()) {
      print('page已存在！');
      return;
    }
    var projectName = loadYaml(file.readAsStringSync())['name'];
    final pageType = logger.chooseOne(
      'please choose page type:',
      choices: ['stateless', 'stateful'],
    );

    pageDir.createSync();
    var progress = logger.progress('Generating page...');
    // 生成页面
    generatePage(
        pageName: pageName,
        pageDir: pageDir,
        pageType: pageType,
        projectName: projectName);
    updateRouter(pageName, projectName);
    await Process.run('dart', ['format', pageDir.path]);
    await Process.run('dart', ['format', 'lib/router/']);
    progress.complete('Page generated successfully!');
    logger.success(
        'new page: ${path.join(pageDir.path, pageName.snakeCase + '_page.dart')}');
    logger.info('modify page: lib/router/app_router.dart');
    logger.info('modify page: lib/router/app_path.dart');
  }
}
