import 'package:flutter/material.dart';

class LanguageLocale {
  static const Locale vn = Locale('vi', 'VN');
  static const Locale en = Locale('en', 'US');

  static Locale getLocaleByName({required String locale}) {
    if (locale.contains(LanguageName.vn)) {
      return LanguageLocale.vn;
    } else {
      return LanguageLocale.en;
    }
  }

  static Locale getLocaleByBool({required bool isVN}) {
    if (isVN) {
      return LanguageLocale.vn;
    } else {
      return LanguageLocale.en;
    }
  }
}

class LanguageName {
  static const String vn = 'vi_VN';
  static const String en = 'en_US';
}

class LanguageModel {
  final String language;
  final String flag;
  final Locale locale;

  LanguageModel({
    required this.language,
    required this.flag,
    required this.locale,
  });
}
