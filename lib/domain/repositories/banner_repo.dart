import '../../data/models/banner/banner_model.dart';
import '../../data/models/base_response.dart';

abstract class BannerRepo {
  Future<BaseResponse<BannerModel>> getBanners();
}
