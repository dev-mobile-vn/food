import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  final String label;
  final String ic;
  final VoidCallback action;

  const ProfileItem({
    super.key,
    required this.label,
    required this.ic,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => action.call(),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffEDF0F2),
                  borderRadius: BorderRadius.circular(8)),
              height: 28,
              width: 28,
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(
                ic,
                width: 16,
                height: 16,
              ),
            ),
            Text(
              label,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/ic_right.svg')
          ],
        ),
      ),
    );
  }
}
