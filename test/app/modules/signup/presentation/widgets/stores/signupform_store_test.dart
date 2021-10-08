import 'package:ezwallet_mobile/app/modules/signup/presentation/protocols/email_validator_protocol.dart';
import 'package:ezwallet_mobile/app/modules/signup/presentation/widgets/stores/signupform_store.dart';
import 'package:ezwallet_mobile/app/modules/signup/signup_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';
import 'package:modular_test/modular_test.dart';

class EmailValidatorStub extends Mock implements EmailValidator {}

void main() {
  var emailValidator = EmailValidatorStub();
  var store = SignUpFormStore(emailValidator);

  setUp(() => initModule(SignupModule(),
      replaceBinds: [Bind.instance<EmailValidator>(emailValidator)]));

  test('should calls name controller with correct value', () async {
    expect(store.name, equals(''));
    store.name = 'any_name';
    expect(store.name, equals('any_name'));
  });

  test('should calls lastName controller with correct value', () async {
    expect(store.lastName, equals(''));
    store.lastName = 'any_lastName';
    expect(store.lastName, equals('any_lastName'));
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
    var email = 'any_email@mail.com';
    when(emailValidator.validate(email)).thenReturn(true);
    var validEmail = store.validateEmail(email);
    expect(validEmail, equals(true));
  });

  test('should EmailController return false if not valid email is provided',
      () async {
    var email = '';
    when(emailValidator.validate(email)).thenReturn(false);
    var validEmail = store.validateEmail(email);
    expect(validEmail, equals(false));
  });

  test('should Store Validate password return null if password is empty',
      () async {
    var password = '';
    // when(emailValidator.validate(email)).thenReturn(false);
    var validPassword = store.validatePassword(password);
    expect(validPassword, equals(null));
  });
}
