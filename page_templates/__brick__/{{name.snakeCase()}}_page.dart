import 'package:flutter/material.dart';
import 'package:ashtree_app/util/extensions/extensions.dart';

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
class {{pascalCase name}}Page extends StatefulWidget {
  const {{pascalCase name}}Page({ Key? key }) : super(key: key);

  @override
  State createState() => _{{pascalCase name}}PageState();
}

class _{{pascalCase name}}PageState extends State<{{pascalCase name}}Page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{pascalCase name}}'),
    ).myScaffoldWrapper(title: '{{pascalCase name}}');
  }
}
{{/stateful}}