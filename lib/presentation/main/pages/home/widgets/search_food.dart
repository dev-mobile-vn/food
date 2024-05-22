import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/resource/colors.dart';

class SearchFood extends StatelessWidget {
  const SearchFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, top: 20, right: 16, bottom: 20),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        children: [
          const Icon(Icons.search),
          const SizedBox(
            width: 8,
          ),
          Text(
            'what do you want to eat?',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: const Color(0xFFA7AAB2)),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
            child: SvgPicture.asset('assets/icons/ic_map.svg'),
          )
        ],
      ),
    );
  }
}
