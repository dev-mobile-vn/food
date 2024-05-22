import 'package:flutter/material.dart';
import '../../../../../core/widgets/card_category_home.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
            padding: const EdgeInsets.only(top: 60),
            itemCount: 8,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return const Padding(
                padding: EdgeInsets.only(right: 12),
                child: CardCategoryHome(),
              );
            }),
      ),
    );
  }
}
