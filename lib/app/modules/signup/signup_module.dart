import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/protocols/email_validator_protocol.dart';
import 'presentation/signup_page.dart';
import 'presentation/stores/signup_store.dart';
import 'presentation/utils/email_validator_adapter.dart';
import 'presentation/widgets/stores/signupform_store.dart';

class SignupModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<EmailValidator>((i) => EmailValidatorAdapter()),
    Bind.lazySingleton((i) => SignupStore()),
    Bind.lazySingleton((i) => SignUpFormStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SignupPage()),
  ];
}
