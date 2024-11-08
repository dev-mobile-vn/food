// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantModel _$RestaurantModelFromJson(Map<String, dynamic> json) =>
    RestaurantModel(
      id: (json['id'] as num).toInt(),
      restaurantName: json['restaurant_name'] as String,
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      images: json['images'] as String,
      restaurantType: json['restaurant_type'] as String,
      email: json['email'] as String?,
      openAt: json['open_at'] as String,
      closeAt: json['close_at'] as String,
      longitude: json['longitude'] as num,
      latitude: json['latitude'] as num,
    );
