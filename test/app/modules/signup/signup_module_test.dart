import 'package:ezwallet_mobile/app/modules/signup/signup_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_test/modular_test.dart';

void main() {
  setUpAll(() {
    initModule(SignupModule());
  });
}
