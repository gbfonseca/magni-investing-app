import 'package:ezwallet_mobile/core/signin/presentation/protocols/email_validator_protocol.dart';
import 'package:ezwallet_mobile/core/signin/presentation/widgets/stores/signinform_store.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';

class EmailValidatorStub extends Mock implements EmailValidator {}

void main() {
  var store = SigninFormStore();

  tearDown(() => {
        store.form.updateValue({'email': '', 'password': ''})
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
}
