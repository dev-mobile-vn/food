import 'package:food/domain/repositories/category_repo.dart';

import '../../data/models/base_response.dart';
import '../../data/models/category/category_model.dart';

class CategoryUseCase {
  final CategoryRepo _repo;

  CategoryUseCase(this._repo);

  Future<BaseResponse<CategoryModel>> getCategories() async {
    return _repo.getCategories();
  }
}
