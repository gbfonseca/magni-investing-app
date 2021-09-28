import 'package:flutter_modular/flutter_modular.dart';

import 'signup_page.dart';
import 'signup_store.dart';

class SignupModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignupStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SignupPage()),
  ];
}
