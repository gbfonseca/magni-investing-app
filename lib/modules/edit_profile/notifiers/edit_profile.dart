import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../main.dart';
import '../../../utils/ui/snack_bar.dart';

class EditProfileNotifier extends ChangeNotifier {
  final SnackBarUtil _snackBarUtil = SnackBarUtil();

  ValueNotifier<bool> loading = ValueNotifier(false);

  FormGroup form = FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'lastName':
        FormControl<String>(value: '', validators: [Validators.required]),
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
  });

  onSubmit(isValid, context) async {
    loading.value = true;
    if (isValid) {
      final data = {
        'name': form.value['name'],
        'lastName': form.value['lastName'],
      };
      await authStore.updateUser(data);
      _snackBarUtil.showSnackBar(
          context, 'Usuário atualizado com sucesso!', Colors.green);
      loading.value = false;
    } else {
      loading.value = false;

      print('inválid');
    }
    loading.value = false;
    loading.notifyListeners();
  }
}
