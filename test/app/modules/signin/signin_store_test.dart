import 'package:ezwallet_mobile/app/modules/signin/signin_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late SigninStore store;

  setUpAll(() {
    store = SigninStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}
