import '../../config/api.dart';

import '../../shared/models/auth_model.dart';
import '../../shared/models/auth_service_model.dart';
import '../../shared/models/user_model.dart';
import 'http_client.dart';

class AuthService implements IAuthService {
  final IHttpClient client;
  final baseUrl = baseUrls['apiBase'];
  AuthService(this.client);

  Future<AuthModel> signin(dynamic data) async {
    final response = await client.post('$baseUrl/auth/signin', data);
    final authData = AuthModel.fromJson(response);
    return authData;
  }

  Future<UserModel> signup(dynamic data) async {
    final response = await client.post('$baseUrl/auth/signup', data);
    final authData = UserModel.fromJson(response);
    return authData;
  }

  Future<UserModel> loggedUser() async {
    final response = await client.get('$baseUrl/auth/logged-user');
    final user = UserModel.fromJson(response);
    return user;
  }
}
