import 'package:ezwallet_mobile/core/signup/presentation/widgets/notifiers/signup_form.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var store = SignUpFormNotifier();

  tearDown(() => {
        store.form.updateValue(
            {'email': '', 'name': '', 'password': '', 'lastName': ''})
      });

  test('should calls email controller with correct value', () async {
    expect(store.form.value['email'], equals(''));
    store.form.updateValue({'email': 'any_mail@mail.com'});
    expect(store.form.value['email'], equals('any_mail@mail.com'));
  });

  test('should calls password controller with correct value', () async {
    expect(store.form.value['password'], equals(''));
    store.form.updateValue({'password': 'any_password'});
    expect(store.form.value['password'], equals('any_password'));
  });

  test('should calls name controller with correct value', () async {
    expect(store.form.value['name'], equals(''));
    store.form.updateValue({'name': 'any_name'});
    expect(store.form.value['name'], equals('any_name'));
  });

  test('should calls last_name controller with correct value', () async {
    expect(store.form.value['lastName'], equals(''));
    store.form.updateValue({'lastName': 'any_last_name'});
    expect(store.form.value['lastName'], equals('any_last_name'));
  });
}
