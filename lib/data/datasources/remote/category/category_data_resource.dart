import 'package:food/data/models/category/category_model.dart';

import '../../../models/base_response.dart';

abstract class CategoryDataResource {
  Future<BaseResponse<CategoryModel>> getCategories();
}
