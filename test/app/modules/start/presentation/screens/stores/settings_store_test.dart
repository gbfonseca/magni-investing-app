import 'package:ezwallet_mobile/app/modules/start/presentation/screens/stores/settings_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late SettingsStore store;

  setUpAll(() {
    store = SettingsStore();
  });

  test('increment count', () async {
    expect(store.isDarkMode, equals(false));
    store.changeMode(true);
    expect(store.isDarkMode, equals(true));
  });
}
