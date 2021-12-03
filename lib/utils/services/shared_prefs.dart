import 'package:shared_preferences/shared_preferences.dart';

import 'storage_service.dart';

class SharedPrefs implements IStorage {
  static late SharedPreferences prefs;

  static Future init() async => prefs = await SharedPreferences.getInstance();

  @override
  Future<String> getData(String key) async => prefs.getString(key) ?? '';

  @override
  setData(String key, String value) async {
    prefs.setString(key, value);
  }

  @override
  removeData(String key) async {
    await prefs.remove(key);
  }
}
