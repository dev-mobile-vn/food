import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/constants/routers.dart';
import '../../../core/resource/colors.dart';
import '../../../core/resource/language.dart';

class PinCodePage extends StatefulWidget {
  const PinCodePage({super.key});

  @override
  State<PinCodePage> createState() => _PinCodePageState();
}

class _PinCodePageState extends State<PinCodePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                        child: Container(
                      width: 48,
                      height: 4,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xFFCDD4DB)),
                    )),
                    const Text(
                      kTitlePersonalInformation,
                      style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(kEnterPinCode,
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    PinCodeTextField(
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      autoFocus: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: const Color(0xFFE8EBEE),
                        activeColor: const Color(0xFFE8EBEE),
                        selectedColor: kPrimaryColor,
                        inactiveColor: const Color(0xFFCDD4DB),
                        inactiveFillColor: const Color(0xFFE8EBEE),
                        selectedFillColor: const Color(0xFFE8EBEE),
                        selectedBorderWidth: 1,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      cursorColor: kPrimaryColor,
                      enableActiveFill: true,
                      // controller: ctrOtp,
                      onCompleted: (v) {
                        // ctrOtp.text = v;
                      },
                      appContext: context,
                      textStyle: const TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Text(kConfirmEnterPinCode,
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      height: 16,
                    ),
                    PinCodeTextField(
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      autoFocus: true,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: const Color(0xFFE8EBEE),
                        activeColor: const Color(0xFFE8EBEE),
                        selectedColor: kPrimaryColor,
                        inactiveColor: const Color(0xFFCDD4DB),
                        inactiveFillColor: const Color(0xFFE8EBEE),
                        selectedFillColor: const Color(0xFFE8EBEE),
                        selectedBorderWidth: 1,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      cursorColor: kPrimaryColor,
                      enableActiveFill: true,
                      // controller: ctrOtp,
                      onCompleted: (v) {
                        // ctrOtp.text = v;
                      },
                      appContext: context,
                      textStyle: const TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 48),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(
                            context, mainRoute, (route) => false);
                      },
                      color: kPrimaryColor,
                      minWidth: double.infinity,
                      height: 52,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ))));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFE8EBEE), width: 0));
  }
}
