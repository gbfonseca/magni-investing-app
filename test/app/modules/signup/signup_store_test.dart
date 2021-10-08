import 'package:ezwallet_mobile/app/modules/signup/presentation/stores/signup_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late SignupStore store;

  setUpAll(() {
    store = SignupStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}
