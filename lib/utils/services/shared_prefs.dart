import 'package:shared_preferences/shared_preferences.dart';

import 'storage.dart';

class SharedPrefs implements IStorage {
  @override
  Future<String>? getData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key) as String;
  }

  @override
  setData(String key, String value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }
}
