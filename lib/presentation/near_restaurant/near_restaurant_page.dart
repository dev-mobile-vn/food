import 'package:flutter/material.dart';
import 'package:food/core/widgets/near_restaurant_card.dart';

import '../../core/resource/colors.dart';

class NearRestaurantPage extends StatelessWidget {
  const NearRestaurantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldGrayColor,
      appBar: AppBar(
        title: const Text('Nearby Restaurant'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
          itemCount: 20,
          itemBuilder: (_, index) {
            return const NearRestaurantCard(
              model: null,
            );
          }),
    );
  }
}
