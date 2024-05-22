import 'package:food/data/datasources/remote/category/category_data_resource.dart';
import 'package:food/data/models/base_response_model.dart';
import 'package:food/data/models/category/category_model.dart';
import 'package:food/domain/repositories/category_repo.dart';

class CategoryRepoImpl extends CategoryRepo {
  final CategoryDataResource _resource;

  CategoryRepoImpl(this._resource);

  @override
  Future<BaseResponseModel<CategoryModel>> getCategories() {
    return _resource.getCategories();
  }
}
