import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/core/resource/colors.dart';

class FoodCardH extends StatelessWidget {
  const FoodCardH({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      padding: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/food.png',
                width: 120,
                height: 120,
              ),
              Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: const Color(0xffEB5757),
                    borderRadius: BorderRadius.circular(4.0)),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Text(
                  '-75%',
                  style: theme.bodySmall!
                      .copyWith(color: const Color(0xffFEE5E5), fontSize: 12),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    ItemPrice(theme: theme),
                    Text(
                      'Bread, Cake',
                      style: theme.titleMedium,
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 50,
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.bottomLeft,
                  child: ItemWaitTime(theme: theme),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemWaitTime extends StatelessWidget {
  const ItemWaitTime({
    super.key,
    required this.theme,
  });

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Brown Bakery',
          style: theme.bodyMedium!
              .copyWith(color: const Color(0xffA7AAB2), fontSize: 12),
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icons/ic_wait_time.svg'),
            const SizedBox(
              width: 4,
            ),
            Text('30 min', style: theme.bodyMedium!.copyWith(fontSize: 12)),
          ],
        )
      ],
    );
  }
}

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
    required this.theme,
  });

  final TextTheme theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              children: [
                TextSpan(
                    text: ' 30.000đ',
                    style: theme.bodyMedium!.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: const Color(0xffA7AAB2),
                        fontSize: 12))
              ],
              text: '200.000đ  ',
              style: theme.titleMedium!.copyWith(color: kPrimaryColor)),
        ),
        Row(
          children: [
            Text('4.5', style: theme.bodyMedium!.copyWith(fontSize: 12)),
            const SizedBox(
              width: 4,
            ),
            SvgPicture.asset('assets/icons/ic_star.svg')
          ],
        )
      ],
    );
  }
}
