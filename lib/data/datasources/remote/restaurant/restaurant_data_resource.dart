import 'package:food/data/models/restaurant/restaurant_model.dart';

import '../../../models/base_response_model.dart';

abstract class RestaurantDataResource {
  Future<BaseResponseModel<RestaurantModel>> getRestaurants();
}
