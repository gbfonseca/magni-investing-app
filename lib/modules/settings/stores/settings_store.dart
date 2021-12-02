import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStoreBase with _$SettingsStore;

abstract class _SettingsStoreBase with Store {
  @observable
  ThemeData themeType = ThemeData.light();

  bool get isDarkMode => themeType.brightness == Brightness.dark;

  @action
  void changeMode(bool value) {
    if (isDarkMode) {
      ThemeData.light();
    } else {
      ThemeData.dark();
    }
  }
}
