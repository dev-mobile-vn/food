import '../../data/models/banner/banner_model.dart';
import '../../data/models/base_response_model.dart';

abstract class BannerRepo {
  Future<BaseResponseModel<BannerModel>> getBanners();
}
