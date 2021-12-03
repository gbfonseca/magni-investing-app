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

  final _$setUserAsyncAction = AsyncAction('_AuthStoreBase.setUser');

  @override
  Future setUser(UserModel userToStore) {
    return _$setUserAsyncAction.run(() => super.setUser(userToStore));
  }

  final _$getUserAsyncAction = AsyncAction('_AuthStoreBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
