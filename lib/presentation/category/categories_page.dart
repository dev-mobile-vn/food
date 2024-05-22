import 'package:flutter/material.dart';

import '../../core/resource/colors.dart';
import '../../core/widgets/category_card.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldGrayColor,
      appBar: AppBar(
        title: const Text('All Category'),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 16,
          )
        ],
      ),
      body: GridView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 60,
          bottom: 16,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 60,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (_, index) {
          return const CategoryCard();
        },
        itemCount: 20,
      ),
    );
  }
}
