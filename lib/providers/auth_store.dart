import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../shared/models/auth_model.dart';
import '../shared/models/user_model.dart';
import '../utils/services/shared_prefs.dart';
import '../utils/services/storage_service.dart';

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

  @observable
  bool authenticated = false;

  @action
  setAuth(AuthModel authData) async {
    storage.setData('user', jsonEncode(authData.user.get()));
    storage.setData('token', authData.token);
    user = authData.user;
    authenticated = true;
  }

  @action
  getUser() async {
    final storageData = await storage.getData('user');
    if (storageData == '') {
      authenticated = false;
      return;
    }
    final userDecoded = jsonDecode(storageData as String);
    user = UserModel.fromJson(userDecoded);
    authenticated = true;
  }

  @action
  getToken() async {
    final storageData = await storage.getData('token');
    if (storageData == '') {
      authenticated = false;
      return;
    }
    final tokenDecoded = jsonDecode(storageData as String);
    token = tokenDecoded;
    authenticated = true;
  }

  @action
  logout(BuildContext context) async {
    await storage.removeData('user');
    user = UserModel(
        id: '',
        email: '',
        lastName: '',
        updatedAt: '',
        createdAt: '',
        name: '',
        password: '');
    authenticated = false;
    Navigator.of(context).pushReplacementNamed('/signin/');
  }
}
