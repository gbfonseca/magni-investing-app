import 'package:flutter/material.dart';

class SettingsNotifier extends ChangeNotifier {
  ValueNotifier<ThemeData> themeType = ValueNotifier(ThemeData.light());

  bool get isDarkMode => themeType.value.brightness == Brightness.dark;

  void changeMode(value) {
    if (isDarkMode) {
      themeType.value = ThemeData.light();
    } else {
      themeType.value = ThemeData.dark();
    }
    themeType.notifyListeners();
  }
}
