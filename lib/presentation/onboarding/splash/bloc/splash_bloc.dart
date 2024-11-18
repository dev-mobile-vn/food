import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/data/datasources/remote/user/user_data_source.dart';

import '../../../../data/models/user/sign_up_model.dart';
import '../../../../di/injector.dart';

part 'splash_event.dart';

part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashNatigateScreenEvent>((event, emit) async {
      await Future.delayed(const Duration(seconds: 3), () async {
        //emit(MainScreenState());
        // emit(RegisterAccountState());
        await injector.get<UserDataSource>().signUp(SignUpModel(
            phoneNumber: "0376249134",
            pinCode: "123456",
            fullName: "truong pham"));
      });
    });
  }
}
