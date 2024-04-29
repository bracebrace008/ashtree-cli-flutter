import 'dart:io';

import 'package:args/command_runner.dart';

class ImgPathGenCommand extends Command {
  @override
  final name = 'imgPathGen';
  @override
  final description = 'Generate image path.';

  ImgPathGenCommand() {}

  @override
  void run() {
    var dir = Directory('assets/images');
    List<String> imgPaths = [];
    if (dir.existsSync()) {
      dir
          .listSync(recursive: true, followLinks: false)
          .forEach((FileSystemEntity entity) {
        if (entity is File &&
            (entity.path.endsWith('.png') ||
                entity.path.endsWith('.jpg') ||
                entity.path.endsWith('.jpeg'))) {
          imgPaths.add(entity.path);
        }
      });
    }
    print('生成imgPath.dart...');
    String imgPathsCode =
        '// coverage:ignore-file\n// GENERATED CODE - DO NOT MODIFY BY HAND\nfinal Map<String, String> imgPathMap = {\n ${imgPaths.map((e) {
      return "'${e.split('/').last}': '$e'";
    }).join(',\n  ')}\n};';
    var targetFile = File('lib/utils/img_path.dart');
    targetFile.writeAsStringSync(imgPathsCode);
    Process.run('dart', ['format', targetFile.path]);
    print('imgPath路径生成完成！');
  }
}
