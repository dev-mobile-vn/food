import 'package:flutter/material.dart';
import 'package:food/core/widgets/food_card_v.dart';
import '../../../../../core/widgets/card_category_home.dart';

class ListPopularFood extends StatelessWidget {
  const ListPopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: SizedBox(
          height: 240,
          child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: FoodCardV(),
                );
              }),
        ));
  }
}
