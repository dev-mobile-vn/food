import '../../domain/repositories/restaurant_repository.dart';
import '../datasources/remote/restaurant/restaurant_data_resource.dart';
import '../models/base_response.dart';
import '../models/restaurant/restaurant_model.dart';

class RestaurantRepositoryImpl extends RestaurantRepository {
  final RestaurantDataResource resource;

  RestaurantRepositoryImpl(this.resource);

  @override
  Future<BaseResponse<RestaurantModel>> getRestaurants() {
    return resource.getRestaurants();
  }
}
