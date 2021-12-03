// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signinform_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninFormStore on _SigninFormStoreBase, Store {
  final _$loadingAtom = Atom(name: '_SigninFormStoreBase.loading');

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

  final _$onSubmitAsyncAction = AsyncAction('_SigninFormStoreBase.onSubmit');

  @override
  Future<void> onSubmit(dynamic validForm, dynamic context) {
    return _$onSubmitAsyncAction.run(() => super.onSubmit(validForm, context));
  }

  final _$_SigninFormStoreBaseActionController =
      ActionController(name: '_SigninFormStoreBase');

  @override
  dynamic setLoading(dynamic isLoading) {
    final _$actionInfo = _$_SigninFormStoreBaseActionController.startAction(
        name: '_SigninFormStoreBase.setLoading');
    try {
      return super.setLoading(isLoading);
    } finally {
      _$_SigninFormStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading}
    ''';
  }
}
