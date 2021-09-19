import 'package:ezwallet_mobile/app/utils/color.dart';
import 'package:ezwallet_mobile/app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EzWallet',
      theme: ThemeData(
          primarySwatch: primaryColor(),
          backgroundColor: ColorConstats.kBackgroundColor,
          textTheme: GoogleFonts.nunitoTextTheme()),
    ).modular();
  }
}
