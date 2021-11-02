import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/protocols/email_validator_protocol.dart';
import 'presentation/signin_page.dart';
import 'presentation/stores/signin_store.dart';
import 'presentation/utils/email_validator_adapter.dart';
import 'presentation/widgets/stores/signinform_store.dart';

class SigninModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory<EmailValidator>((i) => EmailValidatorAdapter()),
    Bind.lazySingleton((i) => SigninStore()),
    Bind.lazySingleton((i) => SigninFormStore())
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SigninPage()),
  ];
}
