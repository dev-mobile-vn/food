import 'package:flutter/material.dart';

import '../../../core/constants/routers.dart';
import '../../../core/resource/colors.dart';
import '../../../core/resource/language.dart';

class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
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
                    const Text(kContentPersonalInformation,
                        style: TextStyle(
                          color: kBlackColor,
                          fontWeight: FontWeight.normal,
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      decoration: InputDecoration(
                        counter: const SizedBox.shrink(),
                        filled: true,
                        isDense: true,
                        fillColor: const Color(0xFFE8EBEE),
                        border: outlineInputBorder(),
                        enabledBorder: outlineInputBorder(),
                        focusedBorder: outlineInputBorder(),
                        hintText: "Full Name",
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: kGrayEnterFieldColor),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        counter: const SizedBox.shrink(),
                        filled: true,
                        isDense: true,
                        fillColor: const Color(0xFFE8EBEE),
                        border: outlineInputBorder(),
                        enabledBorder: outlineInputBorder(),
                        focusedBorder: outlineInputBorder(),
                        hintText: "Email Address",
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.normal,
                            color: kGrayEnterFieldColor),
                      ),
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
