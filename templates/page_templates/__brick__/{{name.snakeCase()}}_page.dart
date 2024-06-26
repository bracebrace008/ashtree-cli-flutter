import 'package:flutter/material.dart';
import 'package:{{projectName.snakeCase()}}/utils/extensions/extensions.dart';

{{#stateless}}
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{name.pascalCase()}}'),
    ).myScaffoldWrapper(title: '{{name.pascalCase()}}');
  }
}
{{/stateless}}

{{#stateful}}
class {{name.pascalCase()}}Page extends StatefulWidget {
  const {{name.pascalCase()}}Page({ Key? key }) : super(key: key);
  

  @override
  State createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{name.pascalCase()}}'),
    ).myScaffoldWrapper(title: '{{name.pascalCase()}}');
  }
}
{{/stateful}}