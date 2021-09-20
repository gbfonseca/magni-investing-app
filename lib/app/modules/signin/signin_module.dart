import 'package:ezwallet_mobile/app/modules/signin/signin_page.dart';
import 'package:ezwallet_mobile/app/modules/signin/signin_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
