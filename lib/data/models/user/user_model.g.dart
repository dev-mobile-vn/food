// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) =>
    UserModel(
      id: json['id'] as num,
      fullName: json['fullName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      pinCode: json['pinCode'] as String,
      addressList: (json['address'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
          [],
    );
