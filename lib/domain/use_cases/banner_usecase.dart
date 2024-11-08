import 'package:food/domain/repositories/banner_repo.dart';

import '../../data/models/banner/banner_model.dart';
import '../../data/models/base_response.dart';

class BannerUseCase {
  final BannerRepo _repo;

  BannerUseCase(this._repo);

  Future<BaseResponse<BannerModel>> getBanners() async {
    return _repo.getBanners();
  }
}
