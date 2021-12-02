import '../../shared/models/auth_model.dart';

import 'http_client.dart';

class SigninService {
  final IHttpClient client;

  SigninService(this.client);

  Future<AuthModel> signin(dynamic data) async {
    final response = await client.post('auth/signin', data);
    final authData = AuthModel.fromJson(response);
    return authData;
  }
}
