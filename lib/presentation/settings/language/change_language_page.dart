import 'package:flutter/material.dart';
import 'package:food/core/extensions/x_translations.dart';

class ChangeLanguagePage extends StatelessWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.s.title_change_language),
      ),
      body: const Center(),
    );
  }
}
