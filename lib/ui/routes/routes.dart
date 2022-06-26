import 'package:flutter/material.dart';
import '../pages/login_page.dart';
import '../pages/signup_page.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) => {
      // '/': (context) => OnBoardingPage(),
      '/login': (context) => LoginPage(),
      '/signup': (context) => SignupPage(),
    };
