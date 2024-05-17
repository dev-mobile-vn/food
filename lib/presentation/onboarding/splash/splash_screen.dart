import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/routers.dart';
import '../../../core/resource/icons.dart';
import '../../../core/widgets/loading.dart';
import 'bloc/splash_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (_, state) {
        if (state is RegisterAccountState) {
          Navigator.pushNamedAndRemoveUntil(
              context, boardingRoute, (route) => false);
        } else if (state is MainScreenState) {
          Navigator.pushNamedAndRemoveUntil(
              context, mainRoute, (route) => false);
        }
      },
      child: SafeArea(
          top: false,
          child: Scaffold(
            body: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    icLogo,
                    width: 200,
                    height: 40,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: Loading(),
                )
              ],
            ),
          )),
    );
  }
}
