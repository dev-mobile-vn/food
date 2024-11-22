import 'dart:io';
import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/core/utils/data_utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState());

  Future getLocale() async {
    String languageCode = Platform.localeName.split('_')[0];
    String countryCode = Platform.localeName.split('_')[1];

    if (!listLanguageSupport.contains(languageCode)) {
      languageCode = 'en';
      countryCode = 'GB';
    }

    emit(state.copyWith(locale: Locale(languageCode, countryCode)));
  }
}
