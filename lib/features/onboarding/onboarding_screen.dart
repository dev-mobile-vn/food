import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/common/contants/routers.dart';
import 'package:food/common/resource/colors.dart';
import 'package:food/common/resource/images.dart';
import 'package:food/features/onboarding/bloc/onboarding_bloc.dart';
import 'package:food/features/onboarding/widgets/item_slider.dart';

import '../../common/utils/dialog_utils.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (_, state) {
        int position = 0;
        if (state is OnboardingChangeTabState) {
          position = state.position;
        }
        return Scaffold(
          backgroundColor: Colors.white,
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: MediaQuery.of(context).padding.top + 84,
                bottom: 24),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 300,
                        child: PageView(
                          onPageChanged: (index) => context
                              .read<OnboardingBloc>()
                              .add(OnboardingChangeTabEvent(index)),
                          children: const [
                            ItemSlider(
                                ic: imgOnBoardingFirst,
                                title: 'Order Food Around You',
                                content:
                                    'The best movie streaming app of the century to make your days great!'),
                            ItemSlider(
                                ic: imgOnBoardingSecond,
                                title: 'Fast Delivery',
                                content:
                                    'The best movie streaming app of the century to make your days great!'),
                            ItemSlider(
                                ic: imgOnBoardingThird,
                                title: 'Save Delivery',
                                content:
                                    'The best movie streaming app of the century to make your days great!'),
                          ],
                        ),
                      ),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(3, (index) {
                            bool selected = position == index;
                            if (selected) {
                              return Container(
                                width: 8,
                                height: 8,
                                margin:
                                    const EdgeInsets.only(left: 2, right: 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: kPrimaryColor),
                              );
                            }
                            return Container(
                              margin: const EdgeInsets.only(left: 2, right: 2),
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.grey.withOpacity(0.5)),
                            );
                          })),
                      const Spacer(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                              context, mainRoute, (route) => false);
                        },
                        color: kPrimaryColor,
                        minWidth: double.infinity,
                        height: 52,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      MaterialButton(
                        onPressed: () {
                          DialogUtils.showModalBottomSheetLogin(context);
                        },
                        color: Colors.white,
                        elevation: 0,
                        minWidth: double.infinity,
                        height: 52,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                            side: const BorderSide(
                                color: kPrimaryColor, width: 1)),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'By using our mobile app, you agree to our Terms of Use and Privacy Policy',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: kBlackColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
