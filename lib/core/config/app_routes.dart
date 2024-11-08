import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/presentation/category/categories_page.dart';
import 'package:food/presentation/near_restaurant/near_restaurant_page.dart';
import 'package:food/presentation/popular_food/popular_food_page.dart';

import '../../presentation/account/account_page.dart';
import '../../presentation/main/main_screen.dart';
import '../../presentation/onboarding/intro/bloc/onboarding_bloc.dart';
import '../../presentation/onboarding/intro/intro_screen.dart';
import '../../presentation/onboarding/splash/bloc/splash_bloc.dart';
import '../../presentation/onboarding/splash/splash_screen.dart';
import '../../presentation/search_country/search_country_screen.dart';
import '../../presentation/wishlist/wishlist_page.dart';
import '../constants/routers.dart';

class AppRouters {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case splashRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => SplashBloc()..add(SplashNatigateScreenEvent()),
            child: const SplashScreen(),
          ),
        );
      case boardingRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => OnboardingBloc()..add(OnboardingChangeTabEvent(0)),
            child: const IntroScreen(),
          ),
        );
      case searchCountryRoute:
        return MaterialPageRoute(builder: (_) => const SearchCountryScreen());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case wishlistRoute:
        return MaterialPageRoute(builder: (_) => const WishlistPage());
      case accountRoute:
        return MaterialPageRoute(builder: (_) => const AccountPage());
      case categoryRoute:
        return MaterialPageRoute(builder: (_) => const CategoriesPage());
      case popularFoodRoute:
        return MaterialPageRoute(builder: (_) => const PopularFoodPage());
      case nearbyRestaurantRoute:
        return MaterialPageRoute(builder: (_) => const NearRestaurantPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
