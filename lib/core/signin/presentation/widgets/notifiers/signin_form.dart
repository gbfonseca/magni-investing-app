import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../../providers/auth_store.dart';
import '../../../../../utils/services/auth_service.dart';
import '../../../../../utils/services/dio_client.dart';
import '../../../../../utils/ui/snack_bar.dart';

class SigninFormNotifier extends ChangeNotifier {
  final SnackBarUtil _snackBarUtil = SnackBarUtil();

  ValueNotifier<bool> loading = ValueNotifier(false);

  FormGroup form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  setLoading(isLoading) {
    loading.value = isLoading;
    loading.notifyListeners();
  }

  Future<void> onSubmit(validForm, context) async {
    try {
      setLoading(true);
      if (validForm) {
        final authService = AuthService(dio);
        final response = await authService.signin(form.value);
        final _authStore = Provider.of<AuthStore>(context, listen: false);
        _authStore.setAuth(response);
        setLoading(false);
        await Navigator.of(context).pushReplacementNamed('/start/');
      }
      setLoading(false);
    } on DioError catch (e) {
      setLoading(false);
      _snackBarUtil.showSnackBar(context, e.response?.data['name'], Colors.red);
    }
    // notifyListeners();
  }
}
