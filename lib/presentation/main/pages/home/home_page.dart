import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/core/widgets/home_title.dart';
import 'widgets/list_category.dart';
import 'widgets/list_nearby_restaurant.dart';
import 'widgets/list_popular_food.dart';
import '../../../../core/constants/routers.dart';
import '../../../../core/resource/colors.dart';
import '../../../../di/injector.dart';
import 'bloc/home_bloc.dart';
import 'widgets/header_home.dart';
import 'widgets/search_food.dart';
import 'widgets/menu_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => injector.get<HomeBloc>()
            ..add(GetRestaurantsEvent())
            ..add(GetBannersEvent())
            ..add(GetCategoriesEvent()),
        ),
      ],
      child: Scaffold(
        backgroundColor: kScafoldGrayColor,
        body: SafeArea(
          top: false,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: HeaderHome(),
              ),
              const SliverToBoxAdapter(
                child: SearchFood(),
              ),
              const SliverToBoxAdapter(
                child: MenuHome(),
              ),
              SliverToBoxAdapter(
                child: HomeTitle(
                    title: 'All Categories',
                    onPress: () {
                      Navigator.pushNamed(context, categoryRoute);
                    }),
              ),
              const SliverToBoxAdapter(
                child: ListCategory(),
              ),
              SliverToBoxAdapter(
                child: HomeTitle(
                    title: 'Popular Food',
                    onPress: () {
                      Navigator.pushNamed(context, popularFoodRoute);
                    }),
              ),
              const SliverToBoxAdapter(
                child: ListPopularFood(),
              ),
              SliverToBoxAdapter(
                child: HomeTitle(
                  title: 'Nearby Restaurant',
                  onPress: () {
                    Navigator.pushNamed(context, nearbyRestaurantRoute);
                  },
                ),
              ),
              const SliverToBoxAdapter(
                child: ListNearbyRestaurant(),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
