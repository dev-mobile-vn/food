import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashNatigateScreenEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 3));
      emit(SplashNavigateScreenState());
    });
  }
}
