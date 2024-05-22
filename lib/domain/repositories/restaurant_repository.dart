import '../../data/models/base_response_model.dart';
import '../../data/models/restaurant/restaurant_model.dart';

abstract class RestaurantRepository {
  Future<BaseResponseModel<RestaurantModel>> getRestaurants();
}
