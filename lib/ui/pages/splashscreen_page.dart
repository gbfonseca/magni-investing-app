import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../utils/colors.dart';
import 'welcome_page.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedSplashScreen(
        splash: 'lib/assets/images/logo_icon/logo_icon.png',
        nextScreen: WelcomePage(),
        backgroundColor: ColorConstants.kBackgroundColor,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
      );
}
