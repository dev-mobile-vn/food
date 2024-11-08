import 'package:food/data/models/base_response.dart';
import '../../domain/repositories/banner_repo.dart';
import '../datasources/remote/banner/banner_data_resource.dart';
import '../models/banner/banner_model.dart';

class BannerRepoImpl extends BannerRepo {
  final BannerDataResource _resource;

  BannerRepoImpl(this._resource);

  @override
  Future<BaseResponse<BannerModel>> getBanners() async {
    return _resource.getBanners();
  }
}
