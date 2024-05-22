import 'package:flutter/material.dart';
import 'package:food/core/widgets/card_item.dart';
import '../../../../core/resource/colors.dart';
import '../../../../core/resource/fonts.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScafoldGrayColor,
      appBar: AppBar(
        title: const Text(
          'Wishlist',
        ),
      ),
      body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 20),
          itemCount: 10,
          itemBuilder: (_, index) {
            return const CardItem();
          }),
    );
  }
}

class UIEmptyOrder extends StatelessWidget {
  const UIEmptyOrder({
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
          const SizedBox(height: 16),
          Center(
            child: Text(
              'Empty Wishlist',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 8),
            child: Text(
              'You do not have a food you like. Explore food around you now.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
            child: MaterialButton(
              onPressed: () {},
              color: kPrimaryColor,
              minWidth: double.infinity,
              height: 52,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: const Text(
                'Explore Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
