import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'config/routes.dart';
import 'providers/auth_provider.dart';
import 'utils/ui/color.dart';
import 'utils/ui/colors.dart';

class AppWidget extends StatelessWidget {
  Widget homePage;

  AppWidget(this.homePage);

  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider<AuthProviderNotifier>(
                create: (_) => AuthProviderNotifier())
          ],
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
                  localizationsDelegates: [
                    GlobalMaterialLocalizations.delegate
                  ],
                  supportedLocales: [const Locale('pt')],
                  home: homePage,
                  routes: getRoutes(context))));
}
