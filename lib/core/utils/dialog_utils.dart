import 'package:flutter/material.dart';
import '../../presentation/onboarding/login/login_screen.dart';
import '../../presentation/onboarding/otp/otp_screen.dart';
import '../../presentation/onboarding/pincode/pincode_page.dart';

class DialogUtils {
  static void showModalBottomSheetLogin(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        builder: (_) {
          return LoginScreen(
            onPress: () {
              showModalBottomSheetOtp(context);
            },
          );
        },
        context: context);
  }

  static void showModalBottomSheetOtp(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        builder: (_) {
          return OtpScreen(
            onPress: () {
              showModalBottomSheetPinCode(context);
            },
          );
        },
        context: context);
  }

  static void showModalBottomSheetPinCode(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        builder: (BuildContext context) {
          return const PinCodePage();
        },
        context: context);
  }
}
