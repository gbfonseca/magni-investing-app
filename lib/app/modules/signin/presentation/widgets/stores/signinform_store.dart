import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'signinform_store.g.dart';

class SigninFormStore = _SigninFormStoreBase with _$SigninFormStore;

abstract class _SigninFormStoreBase with Store {
  @observable
  TextEditingController email = TextEditingController();

  @observable
  TextEditingController password = TextEditingController();

  @action
  onSubmit() {
    print('${email.text} \n ${password.text}');
  }
}
