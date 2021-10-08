// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupform_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpFormStore on _SignUpFormStoreBase, Store {
  final _$nameAtom = Atom(name: '_SignUpFormStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_SignUpFormStoreBase.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignUpFormStoreBase.email');

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

  final _$passwordAtom = Atom(name: '_SignUpFormStoreBase.password');

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

  final _$_SignUpFormStoreBaseActionController =
      ActionController(name: '_SignUpFormStoreBase');

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setLastName(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.setLastName');
    try {
      return super.setLastName(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPassword(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateName(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.validateName');
    try {
      return super.validateName(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateLastName(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.validateLastName');
    try {
      return super.validateLastName(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool validateEmail(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePassword(String value) {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateFields() {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.validateFields');
    try {
      return super.validateFields();
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onSubmit() {
    final _$actionInfo = _$_SignUpFormStoreBaseActionController.startAction(
        name: '_SignUpFormStoreBase.onSubmit');
    try {
      return super.onSubmit();
    } finally {
      _$_SignUpFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName},
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

  final _$nameAtom = Atom(name: '_FormErrorState.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$lastNameAtom = Atom(name: '_FormErrorState.lastName');

  @override
  String? get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String? value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

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
name: ${name},
lastName: ${lastName},
email: ${email},
password: ${password},
hasErrors: ${hasErrors}
    ''';
  }
}
