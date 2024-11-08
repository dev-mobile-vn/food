import '../../data/models/base_response.dart';
import '../../data/models/category/category_model.dart';

abstract class CategoryRepo {
  Future<BaseResponse<CategoryModel>> getCategories();
}
