import 'package:google_fonts/google_fonts.dart';
import 'package:magni_investing/ui/pages/welcome_page.dart';
import 'package:magni_investing/ui/routes/routes.dart';
import 'package:magni_investing/ui/utils/colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.nunitoTextTheme(),
          primaryColor: ColorConstants.kPrimaryColor),
      home: const WelcomePage(),
      routes: getRoutes(context),
    );
  }
}
