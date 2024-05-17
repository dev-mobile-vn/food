part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class SendOtpPhoneNumberEvent extends LoginEvent {
  final String phoneNumber;

  const SendOtpPhoneNumberEvent({required this.phoneNumber});

  @override
  List<Object?> get props => [phoneNumber];
}
