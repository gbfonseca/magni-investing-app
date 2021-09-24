import 'package:ezwallet_mobile/app/modules/signin/presentation/protocols/email_validator_protocol.dart';
import 'package:ezwallet_mobile/app/modules/signin/presentation/widgets/stores/signinform_store.dart';
import 'package:flutter_test/flutter_test.dart';

class EmailValidatorStub implements EmailValidator {
  @override
  validate(String email) => true;
}

void main() {
  late SigninFormStore store;
  late EmailValidatorStub emailValidator;
  setUpAll(() {
    emailValidator = EmailValidatorStub();
    store = SigninFormStore(emailValidator);
  });

  test('should calls email controller with correct value', () async {
    expect(store.email, equals(''));
    store.email = 'any_mail@mail.com';
    expect(store.email, equals('any_mail@mail.com'));
  });

  test('should calls password controller with correct value', () async {
    expect(store.password, equals(''));
    store.password = 'any_password';
    expect(store.password, equals('any_password'));
  });

  test('should EmailController return true if valid email is provided',
      () async {
    var validEmail = store.validateEmail('any_email@mail.com');
    expect(validEmail, equals(true));
  });
}
