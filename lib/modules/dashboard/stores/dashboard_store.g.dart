// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardStore on _DashboardStoreBase, Store {
  final _$tabItemsAtom = Atom(name: '_DashboardStoreBase.tabItems');

  @override
  List<dynamic> get tabItems {
    _$tabItemsAtom.reportRead();
    return super.tabItems;
  }

  @override
  set tabItems(List<dynamic> value) {
    _$tabItemsAtom.reportWrite(value, super.tabItems, () {
      super.tabItems = value;
    });
  }

  final _$itemsAtom = Atom(name: '_DashboardStoreBase.items');

  @override
  List<dynamic> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<dynamic> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  final _$itemsYieldAtom = Atom(name: '_DashboardStoreBase.itemsYield');

  @override
  List<List<dynamic>> get itemsYield {
    _$itemsYieldAtom.reportRead();
    return super.itemsYield;
  }

  @override
  set itemsYield(List<List<dynamic>> value) {
    _$itemsYieldAtom.reportWrite(value, super.itemsYield, () {
      super.itemsYield = value;
    });
  }

  final _$selectedIdAtom = Atom(name: '_DashboardStoreBase.selectedId');

  @override
  int get selectedId {
    _$selectedIdAtom.reportRead();
    return super.selectedId;
  }

  @override
  set selectedId(int value) {
    _$selectedIdAtom.reportWrite(value, super.selectedId, () {
      super.selectedId = value;
    });
  }

  final _$_DashboardStoreBaseActionController =
      ActionController(name: '_DashboardStoreBase');

  @override
  Widget renderSection(int id) {
    final _$actionInfo = _$_DashboardStoreBaseActionController.startAction(
        name: '_DashboardStoreBase.renderSection');
    try {
      return super.renderSection(id);
    } finally {
      _$_DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedId(int id) {
    final _$actionInfo = _$_DashboardStoreBaseActionController.startAction(
        name: '_DashboardStoreBase.setSelectedId');
    try {
      return super.setSelectedId(id);
    } finally {
      _$_DashboardStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tabItems: ${tabItems},
items: ${items},
itemsYield: ${itemsYield},
selectedId: ${selectedId}
    ''';
  }
}
