import 'package:flutter/material.dart';

class StartNotifier extends ChangeNotifier {
  int selectedIndex = 1;

  // ignore: use_setters_to_change_properties
  void onItemTapped(int index) {
    selectedIndex = index;
  }
}
