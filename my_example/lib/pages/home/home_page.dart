import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('主页'.tr()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // GoRouter.of(context).go('/main');
          },
          child: const Text('Go to Main Page'),
        ),
      ),
    );
  }
}
