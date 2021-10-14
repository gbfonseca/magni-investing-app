import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/on_boarding_page.dart';
import 'presentation/on_boarding_store.dart';

/// Module of OnBoarding
class OnBoardingModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => OnBoardingStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => OnBoardingPage()),
  ];
}
