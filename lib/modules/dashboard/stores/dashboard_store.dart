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
  List<dynamic> items = [
    {
      'id': 1,
      'title': 'Renda Variável',
      'balance': 500.00,
      'variation': 5.0,
      'variationInCurrency': 550.00
    },
    {
      'id': 2,
      'title': 'Renda Fixa',
      'balance': 1000.00,
      'variation': 10.0,
      'variationInCurrency': 1100.00
    },
    {
      'id': 3,
      'title': 'Tesouro Direto',
      'balance': 1200.00,
      'variation': 1.0,
      'variationInCurrency': 1220.00
    },
    {
      'id': 4,
      'title': 'Fundos Imobiliários',
      'balance': 2000.00,
      'variation': 15.0,
      'variationInCurrency': 2300.00
    },
    {
      'id': 5,
      'title': 'Criptomoedas',
      'balance': 1500.00,
      'variation': 20.0,
      'variationInCurrency': 1800.00
    },
  ];

  @observable
  int selectedId = 1;

  @action
  Widget renderSection(int id, List<dynamic> data) {
    switch (id) {
      case 0:
        return PortfolioSection(
          items: data,
        );
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
