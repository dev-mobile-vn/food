import '../../data/models/base_response_model.dart';
import '../../data/models/category/category_model.dart';

abstract class CategoryRepo {
  Future<BaseResponseModel<CategoryModel>> getCategories();
}
