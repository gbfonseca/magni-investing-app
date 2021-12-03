import 'dart:convert';

import 'package:mobx/mobx.dart';

import '../shared/models/auth_model.dart';
import '../shared/models/user_model.dart';
import '../utils/services/shared_prefs.dart';
import '../utils/services/storage.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final IStorage storage = SharedPrefs();

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
    storage.setData('user', jsonEncode(authData.user.get()));
    storage.setData('token', authData.token);
    user = authData.user;
  }

  @action
  getUser() async {
    final userDecoded = jsonDecode(await storage.getData('user') as String);
    user = UserModel.fromJson(userDecoded);
  }

  @action
  getToken() async {
    final tokenDecoded = jsonDecode(storage.getData('token') as String);
    token = tokenDecoded;
  }
}
