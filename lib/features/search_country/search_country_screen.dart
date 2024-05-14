import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food/common/resource/colors.dart';

import '../../common/resource/icons.dart';

class SearchCountryScreen extends StatelessWidget {
  const SearchCountryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Search Country',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: kBlackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFE8EBEE),
                  contentPadding: const EdgeInsets.all(16),
                  border: outlineInputBorder(),
                  enabledBorder: outlineInputBorder(),
                  focusedBorder: outlineInputBorder(),
                  hintText: "search country",
                  hintStyle: const TextStyle(
                      fontWeight: FontWeight.normal,
                      color: kGrayEnterFieldColor),
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 8, top: 6),
                    child: SvgPicture.asset(icSearch),
                  ),
                  prefixIconConstraints:
                      const BoxConstraints(minHeight: 24, minWidth: 32)),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFFE8EBEE), width: 1));
  }
}
