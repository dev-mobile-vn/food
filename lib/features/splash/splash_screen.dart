import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/common/resource/icons.dart';
import 'package:food/common/widgets/loading.dart';
import 'package:food/features/splash/bloc/splash_bloc.dart';
import '../../common/contants/routers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (_, state) {
        if (state is SplashNavigateScreenState) {
          Navigator.pushNamedAndRemoveUntil(
              context, boardingRoute, (route) => false);
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
