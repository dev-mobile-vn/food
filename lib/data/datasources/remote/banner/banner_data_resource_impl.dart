import 'package:food/core/network/dio_client.dart';
import 'package:food/data/datasources/remote/banner/banner_data_resource.dart';
import 'package:food/data/models/base_response.dart';
import '../../../../di/injector.dart';
import '../../../models/banner/banner_model.dart';

class BannerDataResourceImpl extends BannerDataResource {
  @override
  Future<BaseResponse<BannerModel>> getBanners() async {
    try {
      final res = await injector.get<DioClient>().get('banners');
      return BaseResponse.fromJson(
        res.data,
        (json) => BannerModel.fromJson(json as Map<String, dynamic>),
      );
    } catch (_) {
      rethrow;
    }
  }
}
