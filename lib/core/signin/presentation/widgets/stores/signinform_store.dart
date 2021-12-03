import 'package:dio/dio.dart';
import '../../../../../providers/auth_store.dart';
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
  final AuthStore _authStore = AuthStore();
  @observable
  bool loading = false;

  FormGroup form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  @action
  setLoading(isLoading) {
    loading = isLoading;
  }

  @action
  Future<void> onSubmit(validForm, context) async {
    try {
      setLoading(true);
      if (validForm) {
        final signinService = SigninService(client);
        final response = await signinService.signin(form.value);
        _authStore.setUser(response.user);
        setLoading(false);
        await Navigator.of(context).pushReplacementNamed('/start/');
      }
    } on DioError catch (e) {
      setLoading(false);
      final snackBar = SnackBar(
        content: Text(e.response?.data['name']),
        backgroundColor: Colors.red,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
