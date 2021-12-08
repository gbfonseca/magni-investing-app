import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../presentation/widgets/portifolio_section.dart';
import '../presentation/widgets/yield_section.dart';

part 'dashboard_store.g.dart';

class DashboardStore = _DashboardStoreBase with _$DashboardStore;

abstract class _DashboardStoreBase with Store {
  @observable
  List<dynamic> tabItems = [
    {'id': 0, 'title': 'Portifólio'},
    {'id': 1, 'title': 'Rendimento'},
    {'id': 2, 'title': 'Patrimônio'},
  ];

  @observable
  int selectedId = 1;

  @action
  Widget renderSection(int id) {
    switch (id) {
      case 0:
        return PortfolioSection();
      case 1:
        return YieldSection();

      default:
        return YieldSection();
    }
  }

  @action
  // ignore: use_setters_to_change_properties
  void setSelectedId(int id) {
    selectedId = id;
  }
}
