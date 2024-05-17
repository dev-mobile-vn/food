import 'package:flutter/material.dart';
import 'package:food/core/resource/colors.dart';
import '../resource/fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    useMaterial3: true,
    fontFamily: koHoFontFamily,
    primaryColor: kPrimaryColor,
    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
    cardColor: Colors.white,
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      surfaceTintColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontFamily: fontKoHoBold,
        color: kBlackColor,
      ),
    ),
    textTheme: const TextTheme(
        titleSmall: TextStyle(
          fontSize: 14,
          fontFamily: fontKoHoBold,
          color: kBlackColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontFamily: fontKoHoBold,
          color: kBlackColor,
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontFamily: fontKoHoBold,
          color: kBlackColor,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontFamily: fontKoHoMedium,
          color: kBlackColor,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontFamily: fontKoHoMedium,
          color: kBlackColor,
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontFamily: fontKoHoMedium,
          color: kBlackColor,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontFamily: fontKoHoRegular,
          color: kBlackColor,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontFamily: fontKoHoRegular,
          color: kBlackColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontFamily: fontKoHoRegular,
          color: kBlackColor,
        )),
  );
}
