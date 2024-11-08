import 'package:food/data/models/restaurant/restaurant_model.dart';

import '../../../models/base_response.dart';

abstract class RestaurantDataResource {
  Future<BaseResponse<RestaurantModel>> getRestaurants();
}
