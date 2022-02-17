import 'auth_model.dart';
import 'user_model.dart';

abstract class IAuthService {
  Future<AuthModel> signin(dynamic data);

  Future<UserModel> signup(dynamic data);

  Future<UserModel> loggedUser();
}
