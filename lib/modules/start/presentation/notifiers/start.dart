import 'package:flutter/material.dart';

class StartNotifier extends ChangeNotifier {
  ValueNotifier<int> selectedIndex = ValueNotifier(0);

  // ignore: use_setters_to_change_properties
  void onItemTapped(int index) {
    selectedIndex.value = index;
    selectedIndex.notifyListeners();
  }
}
