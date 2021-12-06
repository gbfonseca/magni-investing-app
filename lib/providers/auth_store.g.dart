// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStoreBase, Store {
  final _$userAtom = Atom(name: '_AuthStoreBase.user');

  @override
  UserModel get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$tokenAtom = Atom(name: '_AuthStoreBase.token');

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  final _$authenticatedAtom = Atom(name: '_AuthStoreBase.authenticated');

  @override
  bool get authenticated {
    _$authenticatedAtom.reportRead();
    return super.authenticated;
  }

  @override
  set authenticated(bool value) {
    _$authenticatedAtom.reportWrite(value, super.authenticated, () {
      super.authenticated = value;
    });
  }

  final _$setAuthAsyncAction = AsyncAction('_AuthStoreBase.setAuth');

  @override
  Future setAuth(AuthModel authData) {
    return _$setAuthAsyncAction.run(() => super.setAuth(authData));
  }

  final _$getUserAsyncAction = AsyncAction('_AuthStoreBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$getTokenAsyncAction = AsyncAction('_AuthStoreBase.getToken');

  @override
  Future getToken() {
    return _$getTokenAsyncAction.run(() => super.getToken());
  }

  final _$logoutAsyncAction = AsyncAction('_AuthStoreBase.logout');

  @override
  Future logout(BuildContext context) {
    return _$logoutAsyncAction.run(() => super.logout(context));
  }

  @override
  String toString() {
    return '''
user: ${user},
token: ${token},
authenticated: ${authenticated}
    ''';
  }
}
