import 'package:flutter_test/flutter_test.dart';
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
}
