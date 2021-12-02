import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'signupform_store.g.dart';

class SignUpFormStore = _SignUpFormStoreBase with _$SignUpFormStore;

abstract class _SignUpFormStoreBase with Store {
  FormGroup form = FormGroup({
    'name': FormControl<String>(value: '', validators: [Validators.required]),
    'last_name':
        FormControl<String>(value: '', validators: [Validators.required]),
    'email': FormControl<String>(
        value: '', validators: [Validators.required, Validators.email]),
    'password':
        FormControl<String>(value: '', validators: [Validators.required]),
  });

  @action
  onSubmit() {
    print(form.value);
  }
}
