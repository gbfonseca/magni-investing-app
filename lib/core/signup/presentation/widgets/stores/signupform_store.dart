import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../shared/models/user_service_model.dart';
import '../../../../../utils/services/auth_service.dart';
import '../../../../../utils/services/dio_client.dart';
import '../../../../../utils/services/http_client.dart';
import '../../../../../utils/ui/snack_bar.dart';

part 'signupform_store.g.dart';

class SignUpFormStore = _SignUpFormStoreBase with _$SignUpFormStore;

abstract class _SignUpFormStoreBase with Store {
  final IHttpClient dio = DioClient();
  final SnackBarUtil _snackBarUtil = SnackBarUtil();
  FormGroup form = FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'lastName':
        FormControl<String>(value: '', validators: [Validators.required]),
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
    'confirmPassword':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  @action
  onSubmit(formIsValid, BuildContext context) async {
    try {
      if (formIsValid) {
        final IAuthService _authService = AuthService(dio);
        await _authService.signup(form.value);
        _snackBarUtil.showSnackBar(
            context, 'Usuário cadastrado com sucesso!', Colors.green);
        Navigator.of(context).pushReplacementNamed('/signin/');
      }
    } on DioError catch (e) {
      _snackBarUtil.showSnackBar(context, e.response?.data['name'], Colors.red);
    }
  }
}
