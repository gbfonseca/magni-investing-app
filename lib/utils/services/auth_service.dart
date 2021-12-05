import '../../shared/models/auth_model.dart';
import '../../shared/models/user_model.dart';
import 'http_client.dart';

class AuthService {
  final IHttpClient client;

  AuthService(this.client);

  Future<AuthModel> signin(dynamic data) async {
    final response = await client.post('auth/signin', data);
    final authData = AuthModel.fromJson(response);
    return authData;
  }

  Future<UserModel> loggedUser() async {
    final response = await client.get('auth/logged-user');
    final user = UserModel.fromJson(response);
    return user;
  }
}
