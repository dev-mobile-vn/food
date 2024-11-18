import 'package:json_annotation/json_annotation.dart';

import 'address_model.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: false)
class UserModel {
  final num id;
  final String fullName;
  final String phoneNumber;
  final String pinCode;
  @JsonKey(name: 'address', defaultValue: [])
  final List<AddressModel> addressList;

  UserModel({
    required this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.pinCode,
    required this.addressList,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
