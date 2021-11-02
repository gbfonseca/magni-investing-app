import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'signinform_store.g.dart';

class SigninFormStore = _SigninFormStoreBase with _$SigninFormStore;

abstract class _SigninFormStoreBase with Store {
  FormGroup form = FormGroup({
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  @action
  void onSubmit() {
    Modular.to.navigate('/start/home/');
  }
}
