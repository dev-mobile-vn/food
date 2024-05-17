import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../resource/colors.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/item_food.png',
            width: 96,
            height: 96,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Full Vegie Salad',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.titleMedium,
                    )),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(
                      'assets/icons/ic_heart.svg',
                      color: const Color(0xffF55053),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                Text(
                  'Green & Healthy Shop',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: const Color(0xffA7AAB2), fontSize: 12),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: kPrimaryColor,
                        child: Text(
                          'Order Now',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(fontSize: 13, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
