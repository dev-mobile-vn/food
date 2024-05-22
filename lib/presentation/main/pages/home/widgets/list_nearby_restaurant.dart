import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/core/widgets/near_restaurant_card.dart';
import 'package:food/presentation/main/pages/home/bloc/home_bloc.dart';

import '../../../../../data/models/restaurant/restaurant_model.dart';

class ListNearbyRestaurant extends StatelessWidget {
  const ListNearbyRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 4 * 180 + 100,
      child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (_, state) {
              if (state is GetRestaurantsState) {
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.restaurants.length,
                    itemBuilder: (_, index) {
                      return NearRestaurantCard(
                        model: state.restaurants[index],
                      );
                    });
              }
              return const SizedBox.shrink();
            },
          )),
    );
  }
}
