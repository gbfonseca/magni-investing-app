import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'config/routes.dart';
import 'providers/auth_store.dart';
import 'utils/color.dart';
import 'utils/colors.dart';

class AppWidget extends StatelessWidget {
  Widget homePage;

  AppWidget(this.homePage);

  @override
  Widget build(BuildContext context) => MultiProvider(
      providers: [Provider<AuthStore>(create: (_) => AuthStore())],
      child: AnnotatedRegion(
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
              home: homePage,
              routes: getRoutes(context))));
}
