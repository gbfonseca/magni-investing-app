import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @action
  setUser(UserModel userToStore) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user', jsonEncode(userToStore.get()));
  }

  @action
  getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userDecoded = jsonDecode(prefs.getString('user') as String);
    user = UserModel.fromJson(userDecoded);
  }
}
