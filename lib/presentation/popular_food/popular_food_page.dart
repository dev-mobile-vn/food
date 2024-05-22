import 'package:flutter/material.dart';
import 'package:food/core/resource/colors.dart';
import 'package:food/core/widgets/food_card_h.dart';

class PopularFoodPage extends StatelessWidget {
  const PopularFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldGrayColor,
      appBar: AppBar(
        title: const Text('Popular Food'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 20),
          itemCount: 20,
          itemBuilder: (_, index) {
            return const FoodCardH();
          }),
    );
  }
}
