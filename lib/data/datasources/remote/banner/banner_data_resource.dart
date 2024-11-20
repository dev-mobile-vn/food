import '../../../../core/network/dio_client.dart';
import '../../../../di/injector.dart';
import '../../../models/banner/banner_model.dart';
import '../../../models/base_response.dart';

 class BannerDataResource {
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
