import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MinePage extends StatelessWidget {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'.tr()),
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
