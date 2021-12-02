import 'package:ezwallet_mobile/core/signup/presentation/protocols/email_validator_protocol.dart';
import 'package:ezwallet_mobile/core/signup/presentation/widgets/stores/signupform_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class EmailValidatorStub extends Mock implements EmailValidator {}

void main() {
  var store = SignUpFormStore();

  tearDown(() => {
        store.form.updateValue(
            {'email': '', 'name': '', 'password': '', 'last_name': ''})
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
    expect(store.form.value['last_name'], equals(''));
    store.form.updateValue({'last_name': 'any_last_name'});
    expect(store.form.value['last_name'], equals('any_last_name'));
  });
}
