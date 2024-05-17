import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.topCenter,
      children: [
        Container(
          height: 160,
          width: MediaQuery.sizeOf(context).width * 0.5,
          padding: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text(
                'Breakfast',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              Text(
                '30+ menu',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: const Color(0xffA7AAB2), fontSize: 12),
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: ' 200.000đ',
                    style: Theme.of(context).textTheme.titleSmall)
              ], text: 'From', style: Theme.of(context).textTheme.bodyMedium))
            ],
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: -60,
          child: Image.asset(
            'assets/images/category_food.png',
            width: 120,
            height: 120,
          ),
        ),
      ],
    );
  }
}
