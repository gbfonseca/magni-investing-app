// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsStore on _SettingsStoreBase, Store {
  final _$themeTypeAtom = Atom(name: '_SettingsStoreBase.themeType');

  @override
  ThemeData get themeType {
    _$themeTypeAtom.reportRead();
    return super.themeType;
  }

  @override
  set themeType(ThemeData value) {
    _$themeTypeAtom.reportWrite(value, super.themeType, () {
      super.themeType = value;
    });
  }

  final _$_SettingsStoreBaseActionController =
      ActionController(name: '_SettingsStoreBase');

  @override
  void changeMode(bool value) {
    final _$actionInfo = _$_SettingsStoreBaseActionController.startAction(
        name: '_SettingsStoreBase.changeMode');
    try {
      return super.changeMode(value);
    } finally {
      _$_SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeType: ${themeType}
    ''';
  }
}
