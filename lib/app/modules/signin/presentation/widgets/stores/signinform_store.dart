import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../protocols/email_validator_protocol.dart';

part 'signinform_store.g.dart';

class SigninFormStore = _SigninFormStoreBase with _$SigninFormStore;

abstract class _SigninFormStoreBase with Store {
  final EmailValidator _emailValidator;

  final FormErrorState error = FormErrorState();

  _SigninFormStoreBase(this._emailValidator);

  @observable
  String email = '';
  @action
  setEmail(String value) => email = value;

  @observable
  String password = '';
  @action
  setPassword(String value) => password = value;

  @action
  bool validateEmail(String value) {
    bool isValid = _emailValidator.validate(value);
    error.email = isValid == true ? null : 'E-mail inválido.';
    return isValid;
  }

  @action
  validatePassword(String value) {
    if (value == '') {
      error.password = 'Senha obrigatória.';
    } else {
      error.password = null;
      return null;
    }
  }

  @action
  onSubmit() {
    validateEmail(email);
    validatePassword(password);
    if (error.hasErrors) {
      return error;
    }
    Modular.to.navigate('/start/home/');
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasErrors => email != null || password != null;
}
