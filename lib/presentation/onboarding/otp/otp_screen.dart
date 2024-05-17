import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/resource/colors.dart';
import '../../../core/resource/language.dart';

class OtpScreen extends StatefulWidget {
  final VoidCallback onPress;

  const OtpScreen({super.key, required this.onPress});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late TextEditingController ctrOtp;

  @override
  void initState() {
    super.initState();
    ctrOtp = TextEditingController();
  }

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
                      kTitleConfirmOtp,
                      style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('Input a 4 digit code we’ve just sent to',
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text('(405) 555-0128',
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.w600,
                        )),
                    const SizedBox(
                      height: 20,
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
                      controller: ctrOtp,
                      onCompleted: (v) {
                        ctrOtp.text = v;
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                      appContext: context,
                      textStyle: const TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    const SizedBox(height: 12),
                    RichText(
                      text: const TextSpan(
                          text: "Dont receive code? ",
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                                text: 'RESEND CODE',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                ))
                          ]),
                    ),
                    const SizedBox(height: 48),
                    MaterialButton(
                      onPressed: () {
                        if (ctrOtp.text.isNotEmpty && ctrOtp.text.length == 6) {
                          Navigator.pop(context);
                          widget.onPress.call();
                        }
                      },
                      color: kPrimaryColor,
                      minWidth: double.infinity,
                      height: 52,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ))));
  }
}
