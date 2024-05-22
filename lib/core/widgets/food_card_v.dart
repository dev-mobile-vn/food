import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resource/colors.dart';

class FoodCardV extends StatelessWidget {
  const FoodCardV({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme theme = Theme.of(context).textTheme;
    return Container(
      height: 240,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/food.png',
                width: 160,
                height: 130,
                fit: BoxFit.fill,
              ),
              Container(
                margin: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: const Color(0xffEB5757),
                    borderRadius: BorderRadius.circular(4.0)),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                child: Text(
                  '75%',
                  style: theme.bodySmall!
                      .copyWith(color: const Color(0xffFEE5E5), fontSize: 12),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: Text(
              'Brown Bakery Brown Bakery Brown Bakery',
              style: theme.labelMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('4.5',
                        style: theme.bodyMedium!.copyWith(fontSize: 12)),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset('assets/icons/ic_star.svg')
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/ic_wait_time.svg'),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('30 min',
                        style: theme.bodyMedium!.copyWith(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: RichText(
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
          )
        ],
      ),
    );
  }
}
