import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:magni_investing/ui/components/input_widget.dart';
import 'package:magni_investing/ui/components/primary_button_widget.dart';
import 'package:magni_investing/ui/components/secondary_button_widget.dart';
import 'package:magni_investing/ui/components/social_button_widget.dart';
import 'package:magni_investing/ui/pages/signup_page.dart';

import '../../factories/create_widget_for_testing.dart';

void main() {
  testWidgets('should signup page has a Cadastre-se Title', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final signupTextFinder = find.text('Cadastre-se');
    expect(signupTextFinder, findsOneWidget);
  });

  testWidgets('should signup page has a Description Text', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final descriptionTextFinder =
        find.text('Cadastre-se com uma das seguintes opções.');
    expect(descriptionTextFinder, findsOneWidget);
  });

  testWidgets('should signup page has a button with google icon',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final buttonWithGoogleIconFinder =
        find.widgetWithIcon(SocialButton, FontAwesome5.google);
    expect(buttonWithGoogleIconFinder, findsOneWidget);
  });

  testWidgets('should signup page has a button with apple icon',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final buttonWithAppleIconFinder =
        find.widgetWithIcon(SocialButton, Icons.apple);
    expect(buttonWithAppleIconFinder, findsOneWidget);
  });

  testWidgets('should signup page has name input and enter text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    await tester.enterText(
        find.widgetWithText(InputWidget, 'Nome'), 'John Doe');
  });

  testWidgets('should signup page has email input and enter text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    await tester.enterText(
        find.widgetWithText(InputWidget, 'Email'), 'john@doe.com');
  });

  testWidgets('should signup page has password input and enter text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    await tester.enterText(
        find.widgetWithText(InputWidget, 'Senha'), 'my_password');
  });

  testWidgets('should signup page has a primary button with Entrar text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final buttonWithEntrarTextFinder =
        find.widgetWithText(PrimaryButton, 'Salvar');
    expect(buttonWithEntrarTextFinder, findsOneWidget);
  });

  testWidgets('should signup page has a secondary button with text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: SignupPage()));
    final buttonWithTextFinder = find.widgetWithText(
        SecondaryButton, 'Já tem uma conta? Conecte-se aqui.');
    expect(buttonWithTextFinder, findsOneWidget);
  });
}
