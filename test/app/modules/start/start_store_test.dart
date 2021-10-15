import 'package:ezwallet_mobile/app/modules/start/start_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late StartStore store;

  setUpAll(() {
    store = StartStore();
  });

  test('increment count', () async {
    expect(store.pageViewController, equals(0));
  });
}
