import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/presentation/main/main_screen.dart';

import '../core/constants/routers.dart';
import '../presentation/onboarding/intro/bloc/onboarding_bloc.dart';
import '../presentation/onboarding/intro/intro_screen.dart';
import '../presentation/onboarding/splash/bloc/splash_bloc.dart';
import '../presentation/onboarding/splash/splash_screen.dart';
import '../presentation/search_country/search_country_screen.dart';

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
