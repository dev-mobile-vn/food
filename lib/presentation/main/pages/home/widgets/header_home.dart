import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + 20,
          left: 16,
          right: 16,
          bottom: 8),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Location',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    'Quang Trung, Go Vap, HCM',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const Icon(
                    Icons.location_on_outlined,
                    size: 16,
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFE5F9FE)),
            child: Row(
              children: [
                SvgPicture.asset('assets/icons/ic_wallet_green.svg'),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  '230',
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
