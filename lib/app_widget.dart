import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/on_boarding/presentation/on_boarding_page.dart';
import 'core/signin/presentation/signin_page.dart';
import 'core/signup/presentation/signup_page.dart';
import 'modules/add_investment/add_investment_page.dart';
import 'modules/profile/profile_page.dart';
import 'modules/settings/settings_page.dart';
import 'modules/start/presentation/start_page.dart';
import 'utils/color.dart';
import 'utils/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: MaterialApp(
        title: 'EzWallet',
        theme: ThemeData(
          primarySwatch: primaryColor(),
          backgroundColor: ColorConstants.kBackgroundColor,
          textTheme: GoogleFonts.nunitoTextTheme(),
          splashColor: ColorConstants.kPrimaryColor,
          primaryColor: ColorConstants.kPrimaryColor,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => OnBoardingPage(),
          '/signin/': (context) => SigninPage(),
          '/signup/': (context) => SignupPage(),
          '/start/': (context) => StartPage(),
          '/start/add_investment/': (context) => AddInvestmentPage(),
          '/start/profile/': (context) => ProfilePage(),
          '/start/settings/': (context) => SettingsPage(),
        },
      ));
}
