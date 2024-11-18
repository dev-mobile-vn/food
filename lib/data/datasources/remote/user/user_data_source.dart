import '../../../models/user/sign_up_model.dart';
import '../../../models/user/user_model.dart';

abstract class UserDataSource {
  Future<UserModel> signUp(SignUpModel model);
}