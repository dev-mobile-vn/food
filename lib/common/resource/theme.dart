import 'package:flutter/material.dart';

import 'fonts.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
      fontFamily: koHoFontFamily,
      colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE21221)),
      useMaterial3: true,
      textTheme: textTheme(),
      dividerTheme: const DividerThemeData(color: Color(0xFFEEEEEE)),
      appBarTheme: AppBarTheme(
        scrolledUnderElevation: 0,
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ),
      inputDecorationTheme: inputDecorationTheme());
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 16),
      fillColor: Colors.grey[200],
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Colors.grey),
          gapPadding: 0),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Colors.grey),
          gapPadding: 0),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Colors.grey),
          gapPadding: 0),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(width: 0, color: Colors.grey),
          gapPadding: 0),
      filled: true,
      hintStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xFF424242),
          fontWeight: FontWeight.normal));
}

TextTheme textTheme() {
  return const TextTheme(
    titleSmall: TextStyle(
      fontSize: 14,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.w200,
      color: Color(0xFF424242),
    ),
    titleMedium: TextStyle(
      fontSize: 16,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.bold,
      color: Color(0xFF424242),
    ),
    titleLarge: TextStyle(
      fontSize: 18,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.bold,
      color: Color(0xFF424242),
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.w300,
      color: Color(0xFF424242),
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.normal,
      color: Color(0xFF424242),
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.normal,
      color: Color(0xFF424242),
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.bold,
      color: Color(0xFF424242),
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.bold,
      color: Color(0xFF424242),
    ),
    labelLarge: TextStyle(
      fontSize: 16,
      fontFamily: koHoFontFamily,
      fontWeight: FontWeight.bold,
      color: Color(0xFF424242),
    ),
  );
}
