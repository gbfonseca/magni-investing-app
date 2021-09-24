// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signinform_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninFormStore on _SigninFormStoreBase, Store {
  final _$emailAtom = Atom(name: '_SigninFormStoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SigninFormStoreBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_SigninFormStoreBaseActionController =
      ActionController(name: '_SigninFormStoreBase');

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validateEmail(String value) {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePassword(String value) {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

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

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorState.hasErrors'))
          .value;

  final _$emailAtom = Atom(name: '_FormErrorState.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_FormErrorState.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
hasErrors: ${hasErrors}
    ''';
  }
}
