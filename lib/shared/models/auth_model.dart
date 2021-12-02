import 'user_model.dart';

class AuthModel {
  UserModel user;
  String token;

  AuthModel({required this.user, required this.token});

  static AuthModel fromJson(Map map) =>
      AuthModel(user: UserModel.fromJson(map['user']), token: map['token']);
}
