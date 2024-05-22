import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/models/restaurant/restaurant_model.dart';
import 'image_widget.dart';

class NearRestaurantCard extends StatelessWidget {
  final RestaurantModel? model;

  const NearRestaurantCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        children: [
          Stack(
            children: [
              ImageWidget(
                url: model!.images,
                height: 100,
                fit: BoxFit.fitWidth,
                width: MediaQuery.sizeOf(context).width,
              ),
              Positioned(
                left: 6,
                bottom: 8,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffF6F7F8)),
                  child: Text(
                    '1,2 km',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 8, top: 12, right: 8, bottom: 8),
            child: Row(
              children: [
                Text(
                  model!.restaurantName,
                  style: Theme.of(context).textTheme.titleMedium,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                SvgPicture.asset('assets/icons/ic_star.svg'),
                const SizedBox(
                  width: 4,
                ),
                const Text('4.5')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model!.restaurantType,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: const Color(0xff5C616F)),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text('Open at ${model!.openAt} AM',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: const Color(0xff0BB8E4)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
