import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_widget.dart';
import 'core/on_boarding/presentation/on_boarding_page.dart';
import 'modules/start/presentation/start_page.dart';
import 'providers/auth_provider.dart';
import 'providers/wallet_provider.dart';
import 'utils/services/shared_prefs.dart';

AuthProviderNotifier authStore = AuthProviderNotifier();
WalletProvider walletProvider = WalletProvider();

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  await SharedPrefs.init();
  await authStore.getUser();
  Widget homepage = OnBoardingPage();
  if (authStore.authenticated) {
    await walletProvider.getWallets();
    homepage = StartPage();
  } else {
    homepage = OnBoardingPage();
  }
  runApp(AppWidget(homepage));
}
