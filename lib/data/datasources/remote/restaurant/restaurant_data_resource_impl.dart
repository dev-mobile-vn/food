import 'package:food/core/network/dio_client.dart';
import 'package:food/data/models/restaurant/restaurant_model.dart';
import '../../../../di/injector.dart';
import 'restaurant_data_resource.dart';
import '../../../models/base_response.dart';

class RestaurantDataResourceImpl extends RestaurantDataResource {
  @override
  Future<BaseResponse<RestaurantModel>> getRestaurants() async {
    try {
      final response = await getIt.get<DioClient>().get("restaurants");
      return BaseResponse.fromJson(
        response.data,
        (json) => RestaurantModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (_) {
      rethrow;
    }
  }
}
