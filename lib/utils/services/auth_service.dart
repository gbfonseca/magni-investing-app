import '../../shared/models/auth_model.dart';

import 'http_client.dart';

class AuthService {
  final IHttpClient client;

  AuthService(this.client);

  Future<AuthModel> signin(dynamic data) async {
    final response = await client.post('auth/signin', data);
    final authData = AuthModel.fromJson(response);
    return authData;
  }
}
