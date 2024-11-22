import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/core/extensions/x_translations.dart';
import 'package:food/presentation/onboarding/intro/widgets/item_slider.dart';

import '../../../core/constants/routers.dart';
import '../../../core/resource/colors.dart';
import '../../../core/resource/images.dart';
import '../../../core/utils/dialog_utils.dart';
import 'bloc/onboarding_bloc.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

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
                        height: 400,
                        child: PageView(
                          onPageChanged: (index) => context
                              .read<OnboardingBloc>()
                              .add(OnboardingChangeTabEvent(index)),
                          children: [
                            ItemSlider(
                              ic: imgOnBoardingFirst,
                              title: context.s.order_food_round_you,
                              content: context.s.content_order_food_round_you,
                            ),
                            ItemSlider(
                                ic: imgOnBoardingSecond,
                                title: context.s.fast_delivery,
                                content: context.s.content_fast_delivery),
                            ItemSlider(
                                ic: imgOnBoardingThird,
                                title: context.s.save_delivery,
                                content: context.s.content_save_delivery),
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
                        child: Text(
                          context.s.getStarted,
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
                        child: Text(
                          context.s.btn_login,
                          style: TextStyle(color: kPrimaryColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        context.s.txt_agree_with_terms_and_privacy,
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
