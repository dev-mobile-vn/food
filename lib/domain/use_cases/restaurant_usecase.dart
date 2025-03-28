import '../../data/models/base_response.dart';
import '../../data/models/restaurant/restaurant_model.dart';
import '../repositories/restaurant_repository.dart';

class RestaurantUseCase {
  final RestaurantRepository _repository;

  RestaurantUseCase(this._repository);

  Future<BaseResponse<RestaurantModel>> getRestaurants() async {
    return _repository.getRestaurants();
  }
}
