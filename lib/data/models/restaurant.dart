import 'package:food/data/datasources/_mappers/entity_convertable.dart';
import 'package:food/domain/entities/restaurant_entity.dart';

import '../datasources/_mappers/entity_convertable.dart';

class Restaurant with EntityConvertible<Restaurant, RestaurantEntity> {
  final String uuid;
  final String name;
  final String address;
  final String phone;

  Restaurant(
      {required this.uuid,
      required this.name,
      required this.address,
      required this.phone});

  @override
  RestaurantEntity toEntity() =>
      RestaurantEntity(uuid: uuid, name: name, address: address, phone: phone);
}
