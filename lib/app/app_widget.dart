import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

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
            backgroundColor: ColorConstats.kBackgroundColor,
            textTheme: GoogleFonts.nunitoTextTheme(),
            splashColor: ColorConstats.kPrimaryColor,
            primaryColor: ColorConstats.kPrimaryColor,
          ),
        ).modular(),
      );
}
