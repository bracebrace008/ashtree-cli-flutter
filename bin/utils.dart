import 'dart:io';

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
