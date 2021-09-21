// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signinform_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninFormStore on _SigninFormStoreBase, Store {
  final _$emailAtom = Atom(name: '_SigninFormStoreBase.email');

  @override
  TextEditingController get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(TextEditingController value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SigninFormStoreBase.password');

  @override
  TextEditingController get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(TextEditingController value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_SigninFormStoreBaseActionController =
      ActionController(name: '_SigninFormStoreBase');

  @override
  dynamic onSubmit() {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.onSubmit');
    try {
      return super.onSubmit();
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
