import 'package:food/data/datasources/_mappers/entity_convertable.dart';
import 'package:food/domain/entities/restaurant_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable(createToJson: false)
class RestaurantModel
    with EntityConvertible<RestaurantModel, RestaurantEntity> {
  final int id;
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  final String address;

  //final List<String> images;

  final String images;
  @JsonKey(name: 'restaurant_type')
  final String restaurantType;
  @JsonKey(name: 'restaurant_name')
  final String restaurantName;
  final String? email;
  @JsonKey(name: 'open_at')
  final String openAt;
  @JsonKey(name: 'close_at')
  final String closeAt;
  final num longitude;
  final num latitude;

  RestaurantModel({
    required this.id,
    required this.restaurantName,
    required this.phoneNumber,
    required this.address,
    required this.images,
    required this.restaurantType,
    required this.email,
    required this.openAt,
    required this.closeAt,
    required this.longitude,
    required this.latitude,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) =>
      _$RestaurantModelFromJson(json);

  @override
  RestaurantEntity toEntity() => RestaurantEntity(
        id: id,
        restaurantName: restaurantName,
        phoneNumber: phoneNumber,
        address: address,
        restaurantType: restaurantType,
        email: email,
        openAt: openAt,
        closeAt: closeAt,
      );
}
