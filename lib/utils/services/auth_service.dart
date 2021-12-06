import '../../shared/models/auth_model.dart';
import '../../shared/models/user_model.dart';
import '../../shared/models/user_service_model.dart';
import 'http_client.dart';

class AuthService implements IAuthService {
  final IHttpClient client;

  AuthService(this.client);

  Future<AuthModel> signin(dynamic data) async {
    final response = await client.post('auth/signin', data);
    final authData = AuthModel.fromJson(response);
    return authData;
  }

  Future<UserModel> signup(dynamic data) async {
    final response = await client.post('auth/signup', data);
    final authData = UserModel.fromJson(response);
    return authData;
  }

  Future<UserModel> loggedUser() async {
    final response = await client.get('auth/logged-user');
    final user = UserModel.fromJson(response);
    return user;
  }
}
