import 'package:json_annotation/json_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpModel {
  final String fullName;
  final String phoneNumber;
  final String pinCode;

  SignUpModel({
    required this.fullName,
    required this.phoneNumber,
    required this.pinCode,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpModelToJson(this);
}
