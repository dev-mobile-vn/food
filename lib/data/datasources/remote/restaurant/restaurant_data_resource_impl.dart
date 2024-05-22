import 'package:food/core/network/dio_client.dart';
import 'package:food/data/models/restaurant/restaurant_model.dart';
import '../../../../di/injector.dart';
import 'restaurant_data_resource.dart';
import '../../../models/base_response_model.dart';

class RestaurantDataResourceImpl extends RestaurantDataResource {
  @override
  Future<BaseResponseModel<RestaurantModel>> getRestaurants() async {
    try {
      final response = await injector.get<DioClient>().get("restaurants");
      return BaseResponseModel.fromJson(
        response.data,
        (json) => RestaurantModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (_) {
      rethrow;
    }
  }
}
