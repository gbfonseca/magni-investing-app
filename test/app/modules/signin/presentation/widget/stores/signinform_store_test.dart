import 'package:ezwallet_mobile/app/modules/signin/presentation/widgets/stores/signinform_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late SigninFormStore store;

  setUpAll(() {
    store = SigninFormStore();
  });

  test('should calls email controller with correct value', () async {
    expect(store.email.text, equals(''));
    store.email.text = 'any_mail.com';
    expect(store.email.text, equals('any_mail.com'));
  });
}
