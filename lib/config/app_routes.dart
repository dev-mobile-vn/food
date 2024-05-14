import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/features/main/main_screen.dart';
import 'package:food/features/onboarding/onboarding_screen.dart';
import 'package:food/features/search_country/search_country_screen.dart';
import 'package:food/features/splash/bloc/splash_bloc.dart';
import '../common/contants/routers.dart';
import '../features/onboarding/bloc/onboarding_bloc.dart';
import '../features/splash/splash_screen.dart';

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
            child: const OnBoardingScreen(),
          ),
        );
      case searchCountryRoute:
        return MaterialPageRoute(builder: (_) => const SearchCountryScreen());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => const MainScreen());
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
