import 'package:ezwallet_mobile/ui/pages/welcome_page.dart';
import 'package:ezwallet_mobile/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
          primaryColor: ColorConstants.kPrimaryColor),
      home: const WelcomePage(),
    );
  }
}
