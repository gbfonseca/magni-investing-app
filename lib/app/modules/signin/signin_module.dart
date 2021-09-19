import 'package:flutter_modular/flutter_modular.dart';

import 'signin_page.dart';
import 'signin_store.dart';

class SigninModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SigninStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SigninPage()),
  ];
}
