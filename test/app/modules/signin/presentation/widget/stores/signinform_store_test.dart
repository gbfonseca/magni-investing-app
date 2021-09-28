import 'package:ezwallet_mobile/app/modules/signin/presentation/protocols/email_validator_protocol.dart';
import 'package:ezwallet_mobile/app/modules/signin/presentation/widgets/stores/signinform_store.dart';
import 'package:ezwallet_mobile/app/modules/signin/signin_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';
import 'package:modular_test/modular_test.dart';

class EmailValidatorStub extends Mock implements EmailValidator {}

void main() {
  var emailValidator = EmailValidatorStub();
  var store = SigninFormStore(emailValidator);

  setUp(() => initModule(SigninModule(),
      replaceBinds: [Bind.instance<EmailValidator>(emailValidator)]));

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
