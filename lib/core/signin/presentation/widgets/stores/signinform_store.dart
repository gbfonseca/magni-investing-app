import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../providers/auth_store.dart';
import '../../../../../utils/services/auth_service.dart';
import '../../../../../utils/services/dio_client.dart';
import '../../../../../utils/services/http_client.dart';

part 'signinform_store.g.dart';

class SigninFormStore = _SigninFormStoreBase with _$SigninFormStore;

abstract class _SigninFormStoreBase with Store {
  final IHttpClient client = DioClient();
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
        final authService = AuthService(client);
        final response = await authService.signin(form.value);
        final _authStore = Provider.of<AuthStore>(context, listen: false);
        _authStore.setAuth(response);
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
