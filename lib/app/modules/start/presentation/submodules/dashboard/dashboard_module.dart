import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_page.dart';
import 'dashboard_store.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => DashboardStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => DashboardPage(),
        transition: TransitionType.leftToRight),
  ];
}
