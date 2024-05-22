import 'package:food/domain/repositories/banner_repo.dart';

import '../../data/models/banner/banner_model.dart';
import '../../data/models/base_response_model.dart';

class BannerUseCase {
  final BannerRepo _repo;

  BannerUseCase(this._repo);

  Future<BaseResponseModel<BannerModel>> getBanners() async {
    return _repo.getBanners();
  }
}
