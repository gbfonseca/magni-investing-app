// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EditProfileStore on _EditProfileStore, Store {
  final _$loadingAtom = Atom(name: '_EditProfileStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$_EditProfileStoreActionController =
      ActionController(name: '_EditProfileStore');

  @override
  dynamic onSubmit(dynamic isValid, dynamic context) {
    final _$actionInfo = _$_EditProfileStoreActionController.startAction(
        name: '_EditProfileStore.onSubmit');
    try {
      return super.onSubmit(isValid, context);
    } finally {
      _$_EditProfileStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
