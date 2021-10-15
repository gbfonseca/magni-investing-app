import 'package:flutter_modular/flutter_modular.dart';

import 'modules/on_boarding/on_boarding_module.dart';
import 'modules/signin/signin_module.dart';
import 'modules/signup/signup_module.dart';
import 'modules/start/start_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: OnBoardingModule()),
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
    ModuleRoute(
      '/start/',
      module: StartModule(),
      transition: TransitionType.rightToLeftWithFade,
    ),
  ];
}
