import '../../data/models/base_response.dart';
import '../../data/models/restaurant/restaurant_model.dart';

abstract class RestaurantRepository {
  Future<BaseResponse<RestaurantModel>> getRestaurants();
}
