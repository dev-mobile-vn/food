import 'package:food/core/network/dio_client.dart';
import 'package:food/data/datasources/remote/category/category_data_resource.dart';
import 'package:food/data/models/base_response.dart';
import 'package:food/data/models/category/category_model.dart';
import 'package:food/di/injector.dart';

class CategoryDataResourceImpl extends CategoryDataResource {
  @override
  Future<BaseResponse<CategoryModel>> getCategories() async {
    try {
      final response = await getIt.get<DioClient>().get('categories');
      return BaseResponse.fromJson(
        response.data,
        (json) => CategoryModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (_) {
      rethrow;
    }
  }
}
