import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../resource/colors.dart';

class HomeTitle extends StatelessWidget {
  final String title;
  final VoidCallback? onPress;

  const HomeTitle({super.key, required this.title, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 16),
          ),
          if (onPress != null)
            InkWell(
              onTap: () => onPress!.call(),
              child: Row(
                children: [
                  Text(
                    'See All',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: kPrimaryColor),
                  ),
                  const SizedBox(width: 8),
                  SvgPicture.asset('assets/icons/ic_right.svg',
                      color: kPrimaryColor)
                ],
              ),
            )
        ],
      ),
    );
  }
}
