import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../utils/services/dio_client.dart';
import '../../../../../utils/services/http_client.dart';
import '../../../../../utils/services/signin_service.dart';

part 'signinform_store.g.dart';

class SigninFormStore = _SigninFormStoreBase with _$SigninFormStore;

abstract class _SigninFormStoreBase with Store {
  final IHttpClient client = DioClient();

  FormGroup form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  @action
  Future<void> onSubmit(validForm, context) async {
    if (validForm) {
      final signinService = SigninService(client);
      final response = await signinService.signin(form.value);
      Navigator.of(context).pushReplacementNamed('/start/');
    }
  }
}
