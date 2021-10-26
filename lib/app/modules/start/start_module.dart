import 'presentation/screens/settings_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/screens/profile_page.dart';
import 'presentation/start_page.dart';
import 'presentation/stores/start_store.dart';
import 'presentation/submodules/dashboard/dashboard_module.dart';
import 'presentation/submodules/home/home_module.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => StartStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ModuleRoute(
        '/home/',
        module: HomeModule(),
        transition: TransitionType.rightToLeftWithFade,
      ),
      ModuleRoute(
        '/dashboard/',
        module: DashboardModule(),
        transition: TransitionType.rightToLeftWithFade,
      ),
    ]),
    ChildRoute('/profile/', child: (_, args) => ProfilePage()),
    ChildRoute('/settings/', child: (_, args) => SettingsPage())
  ];
}
