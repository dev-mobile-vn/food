// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get tb_home {
    return Intl.message(
      'Home',
      name: 'tb_home',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get tb_search {
    return Intl.message(
      'Search',
      name: 'tb_search',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get tb_order {
    return Intl.message(
      'Order',
      name: 'tb_order',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get tb_update {
    return Intl.message(
      'Notification',
      name: 'tb_update',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get tb_profile {
    return Intl.message(
      'Profile',
      name: 'tb_profile',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get item_personal {
    return Intl.message(
      'Personal',
      name: 'item_personal',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get item_account {
    return Intl.message(
      'Account',
      name: 'item_account',
      desc: '',
      args: [],
    );
  }

  /// `Saved Payment`
  String get item_saved_payment {
    return Intl.message(
      'Saved Payment',
      name: 'item_saved_payment',
      desc: '',
      args: [],
    );
  }

  /// `Wishlist`
  String get item_wishlist {
    return Intl.message(
      'Wishlist',
      name: 'item_wishlist',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get item_general {
    return Intl.message(
      'General',
      name: 'item_general',
      desc: '',
      args: [],
    );
  }

  /// `Help & Support`
  String get item_help_support {
    return Intl.message(
      'Help & Support',
      name: 'item_help_support',
      desc: '',
      args: [],
    );
  }

  /// `Privacy & Policy`
  String get item_privacy_policy {
    return Intl.message(
      'Privacy & Policy',
      name: 'item_privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Term & Condition`
  String get item_term_condition {
    return Intl.message(
      'Term & Condition',
      name: 'item_term_condition',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get item_logout {
    return Intl.message(
      'Logout',
      name: 'item_logout',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get title_change_language {
    return Intl.message(
      'Change language',
      name: 'title_change_language',
      desc: '',
      args: [],
    );
  }

  /// `By using our mobile app, you agree to our Terms of Use and Privacy Policy`
  String get txt_agree_with_terms_and_privacy {
    return Intl.message(
      'By using our mobile app, you agree to our Terms of Use and Privacy Policy',
      name: 'txt_agree_with_terms_and_privacy',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get btn_login {
    return Intl.message(
      'Login',
      name: 'btn_login',
      desc: '',
      args: [],
    );
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message(
      'Get Started',
      name: 'getStarted',
      desc: '',
      args: [],
    );
  }

  /// `Order Food Around You`
  String get order_food_round_you {
    return Intl.message(
      'Order Food Around You',
      name: 'order_food_round_you',
      desc: '',
      args: [],
    );
  }

  /// `Fast Delivery`
  String get fast_delivery {
    return Intl.message(
      'Fast Delivery',
      name: 'fast_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Save Delivery`
  String get save_delivery {
    return Intl.message(
      'Save Delivery',
      name: 'save_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Explore a diverse culinary world right around you with Order Food Around You app. We connect you with thousands of local restaurants and eateries to bring you the ultimate dining experience.`
  String get content_order_food_round_you {
    return Intl.message(
      'Explore a diverse culinary world right around you with Order Food Around You app. We connect you with thousands of local restaurants and eateries to bring you the ultimate dining experience.',
      name: 'content_order_food_round_you',
      desc: '',
      args: [],
    );
  }

  /// `Experience lightning-fast delivery service that brings your favorite items right to your doorstep. Our dedicated team ensures your packages arrive safely and on time, every time.`
  String get content_fast_delivery {
    return Intl.message(
      'Experience lightning-fast delivery service that brings your favorite items right to your doorstep. Our dedicated team ensures your packages arrive safely and on time, every time.',
      name: 'content_fast_delivery',
      desc: '',
      args: [],
    );
  }

  /// `Putting safety first with our reliable delivery service. We are committed to protecting your order from pickup to delivery, ensuring the most complete shopping experience.`
  String get content_save_delivery {
    return Intl.message(
      'Putting safety first with our reliable delivery service. We are committed to protecting your order from pickup to delivery, ensuring the most complete shopping experience.',
      name: 'content_save_delivery',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
