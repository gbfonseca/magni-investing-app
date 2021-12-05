import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../shared/models/auth_model.dart';
import '../shared/models/user_model.dart';
import '../utils/services/auth_service.dart';
import '../utils/services/dio_client.dart';
import '../utils/services/shared_prefs.dart';
import '../utils/services/storage_service.dart';

part 'auth_store.g.dart';

class AuthStore = _AuthStoreBase with _$AuthStore;

abstract class _AuthStoreBase with Store {
  final IStorage storage = SharedPrefs();
  final dio = DioClient();

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
    storage.setData('@EzWallet: user', jsonEncode(authData.user.get()));
    storage.setData('@EzWallet: token', authData.token);
    user = authData.user;
    authenticated = true;
  }

  @action
  getUser() async {
    try {
      final _authService = AuthService(dio);
      final storageData = await storage.getData('@EzWallet: user');
      if (storageData == '') {
        authenticated = false;
        return;
      }
      await getToken();
      final response = await _authService.loggedUser();
      user = response;
      authenticated = true;
    } on DioError catch (e) {
      print(e.requestOptions.headers['Authorization']);
    }
  }

  @action
  getToken() async {
    final storageData = await storage.getData('@EzWallet: token');
    if (storageData == '') {
      authenticated = false;
      return;
    }
    final tokenDecoded = storageData as String;
    token = tokenDecoded;
    dio.dio.options.headers['Authorization'] = "Bearer $token";
    authenticated = true;
  }

  @action
  logout(BuildContext context) async {
    await storage.removeData('@EzWallet: user');
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
