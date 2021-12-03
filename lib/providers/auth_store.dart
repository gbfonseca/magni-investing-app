import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/models/auth_model.dart';
import '../shared/models/user_model.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  @observable
  UserModel user = UserModel(
      id: '',
      email: '',
      lastName: '',
      updatedAt: '',
      createdAt: '',
      name: '',
      password: '');

  @observable
  String token = '';

  @action
  setAuth(AuthModel authData) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user', jsonEncode(authData.user.get()));
    prefs.setString('token', authData.token);
  }

  @action
  getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userDecoded = jsonDecode(prefs.getString('user') as String);
    user = UserModel.fromJson(userDecoded);
  }

  @action
  getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final tokenDecoded = jsonDecode(prefs.getString('token') as String);
    token = tokenDecoded;
  }
}
