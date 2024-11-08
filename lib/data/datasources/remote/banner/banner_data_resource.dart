import '../../../models/banner/banner_model.dart';
import '../../../models/base_response.dart';

abstract class BannerDataResource {
  Future<BaseResponse<BannerModel>> getBanners();
}
