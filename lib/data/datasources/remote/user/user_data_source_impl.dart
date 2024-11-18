import 'package:food/data/datasources/remote/user/user_data_source.dart';
import 'package:food/data/models/user/sign_up_model.dart';
import 'package:food/data/models/user/user_model.dart';

import '../../../../core/network/dio_client.dart';
import '../../../../di/injector.dart';

class UserDataSourceImpl extends UserDataSource {
  @override
  Future<UserModel> signUp(SignUpModel model) async {
    try {
      final res = await injector.get<DioClient>().post('users');
      return UserModel.fromJson(res.data);
    } catch (_) {
      rethrow;
    }
  }
}
