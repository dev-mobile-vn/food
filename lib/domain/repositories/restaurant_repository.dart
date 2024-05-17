import 'package:food/domain/entities/restaurant_entity.dart';

abstract class RestaurantRepository {
  Future<List<RestaurantEntity>> getAllRestaurant();
}
