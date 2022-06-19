import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ui/pages/welcome_page.dart';
import 'ui/routes/routes.dart';
import 'ui/utils/colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: GoogleFonts.poppinsTextTheme(),
            primaryColor: ColorConstants.kPrimaryColor),
        home: const WelcomePage(),
        routes: getRoutes(context),
      );
}
