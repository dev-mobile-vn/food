import 'package:food/data/models/category/category_model.dart';

import '../../../models/base_response_model.dart';

abstract class CategoryDataResource {
  Future<BaseResponseModel<CategoryModel>> getCategories();
}
