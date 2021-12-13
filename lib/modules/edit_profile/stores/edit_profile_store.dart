import 'package:mobx/mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

part 'edit_profile_store.g.dart';

class EditProfileStore = _EditProfileStore with _$EditProfileStore;

abstract class _EditProfileStore with Store {
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
  onSubmit(isValid, context) {
    print(form.value);
  }
}
