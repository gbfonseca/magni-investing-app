import '../core/on_boarding/presentation/on_boarding_page.dart';
import '../core/signin/presentation/signin_page.dart';
import '../core/signup/presentation/signup_page.dart';
import '../modules/add_investment/add_investment_page.dart';
import '../modules/profile/profile_page.dart';
import '../modules/settings/settings_page.dart';
import '../modules/start/presentation/start_page.dart';

dynamic getRoutes(context) => {
      '/': (context) => OnBoardingPage(),
      '/signin/': (context) => SigninPage(),
      '/signup/': (context) => SignupPage(),
      '/start/': (context) => StartPage(),
      '/start/add_investment/': (context) => AddInvestmentPage(),
      '/start/profile/': (context) => ProfilePage(),
      '/start/settings/': (context) => SettingsPage(),
    };
