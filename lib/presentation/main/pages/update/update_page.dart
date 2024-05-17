import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Updates',
        ),
      ),
      body: const UIEmptyUpdates(),
    );
  }
}

class UIEmptyUpdates extends StatelessWidget {
  const UIEmptyUpdates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/bg_list_empty.png',
            width: 185,
            height: 185,
          ),
          Center(
            child: Text(
              'Empty Updates',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 8),
            child: Text(
              'Don’t worry we will give you an update immediately. Stay tune!',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
