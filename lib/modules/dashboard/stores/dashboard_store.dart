import 'package:mobx/mobx.dart';

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
  int selectedId = 0;

  @action
  // ignore: use_setters_to_change_properties
  void setSelectedId(int id) {
    selectedId = id;
  }
}
