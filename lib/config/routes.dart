import 'package:ezwallet_mobile/modules/notifications/screens/notifications_page.dart';
import 'package:flutter/cupertino.dart';

import '../core/signin/presentation/signin_page.dart';
import '../core/signup/presentation/signup_page.dart';
import '../modules/add_investment/screens/add_investment_page.dart';
import '../modules/add_investment/screens/add_stocks_page.dart';
import '../modules/dashboard/presentation/dashboard_page.dart';
import '../modules/edit_profile/screens/edit_profile_page.dart';
import '../modules/home/presentation/home_page.dart';
import '../modules/profile/profile_page.dart';
import '../modules/settings/settings_page.dart';
import '../modules/start/presentation/start_page.dart';

Map<String, WidgetBuilder> getRoutes(BuildContext context) => {
      // '/': (context) => OnBoardingPage(),
      '/signin/': (context) => SigninPage(),
      '/signup/': (context) => SignupPage(),
      '/start/': (context) => StartPage(),
      '/start/home/': (context) => HomePage(),
      '/start/dashboard/': (context) => DashboardPage(),
      '/start/profile/': (context) => ProfilePage(),
      '/start/edit_profile/': (context) => EditProfilePage(),
      '/start/settings/': (context) => SettingsPage(),
      '/start/add_investment/': (context) => AddInvestmentPage(),
      '/start/add_investment/add_stocks/': (context) => AddStocksPage(),
      '/start/notificatios': (context) => NotificationsPage(),
    };
