import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../main.dart';
import '../../../utils/ui/snack_bar.dart';

part 'edit_profile_store.g.dart';

class EditProfileStore = _EditProfileStore with _$EditProfileStore;

abstract class _EditProfileStore with Store {
  final SnackBarUtil _snackBarUtil = SnackBarUtil();

  @observable
  bool loading = false;

  FormGroup form = FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'lastName':
        FormControl<String>(value: '', validators: [Validators.required]),
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
  });

  @action
  onSubmit(isValid, context) async {
    loading = true;
    if (isValid) {
      final data = {
        'name': form.value['name'],
        'lastName': form.value['lastName'],
      };
      await authStore.updateUser(data);
      _snackBarUtil.showSnackBar(
          context, 'Usuário atualizado com sucesso!', Colors.green);
      loading = false;
    } else {
      loading = false;

      print('inválid');
    }
    loading = false;
  }
}
