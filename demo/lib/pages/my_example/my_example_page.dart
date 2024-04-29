import 'package:flutter/material.dart';
import 'package:ashtree_app/util/extensions/extensions.dart';

class MyExamplePage extends StatefulWidget {
  const MyExamplePage({Key? key}) : super(key: key);

  @override
  State createState() => _MyExamplePageState();
}

class _MyExamplePageState extends State<MyExamplePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('MyExample'),
    ).myScaffoldWrapper(title: 'MyExample');
  }
}
