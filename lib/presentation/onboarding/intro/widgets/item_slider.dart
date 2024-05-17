import 'package:flutter/material.dart';

class ItemSlider extends StatelessWidget {
  final String ic;
  final String title;
  final String content;

  const ItemSlider(
      {super.key,
      required this.ic,
      required this.title,
      required this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          ic,
          fit: BoxFit.fitWidth,
          width: 226,
          height: 180,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
