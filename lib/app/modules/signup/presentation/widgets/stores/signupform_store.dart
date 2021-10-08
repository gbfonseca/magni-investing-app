import 'package:mobx/mobx.dart';

import '../../protocols/email_validator_protocol.dart';

part 'signupform_store.g.dart';

class SignUpFormStore = _SignUpFormStoreBase with _$SignUpFormStore;

abstract class _SignUpFormStoreBase with Store {
  final EmailValidator _emailValidator;

  final FormErrorState error = FormErrorState();

  _SignUpFormStoreBase(this._emailValidator);

  @observable
  String name = '';
  @action
  setName(String value) => name = value;

  @observable
  String lastName = '';
  @action
  setLastName(String value) => lastName = value;

  @observable
  String email = '';
  @action
  setEmail(String value) => email = value;

  @observable
  String password = '';
  @action
  setPassword(String value) => password = value;

  @action
  validateName(String value) {
    if (value == '') {
      error.name = 'Nome obrigatório.';
    } else {
      error.name = null;
      return null;
    }
  }

  @action
  validateLastName(String value) {
    if (value == '') {
      error.lastName = 'Sobrenome obrigatório.';
    } else {
      error.lastName = null;
      return null;
    }
  }

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
  validateFields() {
    validateName(name);
    validateLastName(lastName);
    validateEmail(email);
    validatePassword(password);
  }

  @action
  onSubmit() {
    validateFields();
    if (error.hasErrors) {
      return error;
    }
    print('$name - $lastName - $email - $password');
  }
}

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  String? name;

  @observable
  String? lastName;

  @observable
  String? email;

  @observable
  String? password;

  @computed
  bool get hasErrors =>
      name != null || lastName != null || email != null || password != null;
}
