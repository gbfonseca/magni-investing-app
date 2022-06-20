import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:magni_investing/ui/components/input_widget.dart';
import 'package:magni_investing/ui/components/primary_button_widget.dart';
import 'package:magni_investing/ui/components/secondary_button_widget.dart';
import 'package:magni_investing/ui/components/social_button_widget.dart';
import 'package:magni_investing/ui/pages/login_page.dart';

import '../../factories/create_widget_for_testing.dart';

void main() {
  testWidgets('should welcome page has a Login Title', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final loginTextFinder = find.text('Log in');
    expect(loginTextFinder, findsOneWidget);
  });

  testWidgets('should welcome page has a Description Text', (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final descriptionTextFinder =
        find.text('Entre com uma das seguintes opções.');
    expect(descriptionTextFinder, findsOneWidget);
  });

  testWidgets('should welcome page has a button with google icon',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final buttonWithGoogleIconFinder =
        find.widgetWithIcon(SocialButton, FontAwesome5.google);
    expect(buttonWithGoogleIconFinder, findsOneWidget);
  });

  testWidgets('should welcome page has a button with apple icon',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final buttonWithAppleIconFinder =
        find.widgetWithIcon(SocialButton, Icons.apple);
    expect(buttonWithAppleIconFinder, findsOneWidget);
  });

  testWidgets('should welcome page has email input and enter text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    await tester.enterText(
        find.widgetWithText(InputWidget, 'Email'), 'john@doe.com');
  });

  testWidgets('should welcome page has password input and enter text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    await tester.enterText(
        find.widgetWithText(InputWidget, 'Senha'), 'my_password');
  });

  testWidgets('should welcome page has a primary button with Entrar text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final buttonWithEntrarTextFinder =
        find.widgetWithText(PrimaryButton, 'Entrar');
    expect(buttonWithEntrarTextFinder, findsOneWidget);
  });

  testWidgets('should welcome page has a secondary button with text',
      (tester) async {
    await tester.pumpWidget(createWidgetForTesting(child: LoginPage()));
    final buttonWithTextFinder = find.widgetWithText(
        SecondaryButton, 'Não tem uma conta? Cadastre-se aqui.');
    expect(buttonWithTextFinder, findsOneWidget);
  });
}
