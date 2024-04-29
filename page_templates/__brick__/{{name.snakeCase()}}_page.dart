import 'package:flutter/material.dart';
import 'package:ashtree_app/util/extensions/extensions.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('{{name.pascalCase()}}'),
    ).myScaffoldWrapper(title: '{{name.pascalCase()}}');
  }
}