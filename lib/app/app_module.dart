import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'modules/signin/signin_module.dart';
import 'modules/signup/signup_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute(
      '/signin/',
      module: SigninModule(),
      transition: TransitionType.rightToLeftWithFade,
    ),
    ModuleRoute(
      '/signup/',
      module: SignupModule(),
      transition: TransitionType.rightToLeftWithFade,
    ),
  ];
}
