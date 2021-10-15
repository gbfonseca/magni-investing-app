import 'package:ezwallet_mobile/app/modules/start/presentation/submodules/home/home_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late HomeStore store;

  setUpAll(() {
    store = HomeStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
