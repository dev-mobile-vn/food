import '../../../models/banner/banner_model.dart';
import '../../../models/base_response_model.dart';

abstract class BannerDataResource {
  Future<BaseResponseModel<BannerModel>> getBanners();
}
