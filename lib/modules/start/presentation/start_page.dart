import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/header_widget.dart';
import '../../dashboard/presentation/dashboard_page.dart';
import '../../home/presentation/home_page.dart';
import '../../notifications/screens/notifications_page.dart';
import '../../wallet/wallet_page.dart';
import 'notifiers/start.dart';

class StartPage extends HookWidget {
  final List<Widget> screensList = [
    HomePage(),
    DashboardPage(),
    Container(),
    WalletPage(),
    NotificationsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final state = useListenable(StartNotifier());
    final pageViewController = usePageController();
    return Consumer<AuthProviderNotifier>(
        builder: (context, _authStore, child) {
      _authStore.getUser();
      return ValueListenableBuilder(
          valueListenable: state.selectedIndex,
          builder: (_, __, ___) => Scaffold(
                appBar: AppBar(
                  title: Header(),
                  backgroundColor: ColorConstants.kBackgroundColor,
                  elevation: 0,
                  toolbarHeight: 90,
                ),
                backgroundColor: ColorConstants.kBackgroundColor,
                body: PageTransitionSwitcher(
                    transitionBuilder:
                        (child, primaryAnimation, secondaryAnimation) =>
                            FadeThroughTransition(
                              animation: primaryAnimation,
                              secondaryAnimation: secondaryAnimation,
                              child: child,
                            ),
                    child: screensList[state.selectedIndex.value]),
                floatingActionButton: FloatingActionButton(
                  child: Icon(Icons.add),
                  backgroundColor: ColorConstants.kPrimaryColor,
                  onPressed: () {
                    state.renderModalAddActions(context);
                  },
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                bottomNavigationBar: BottomAppBar(
                  shape: CircularNotchedRectangle(),
                  notchMargin: 5,
                  child: Theme(
                    data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent),
                    child: BottomNavigationBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      currentIndex: state.selectedIndex.value,
                      type: BottomNavigationBarType.fixed,
                      selectedFontSize: 12,
                      unselectedFontSize: 12,
                      landscapeLayout:
                          BottomNavigationBarLandscapeLayout.centered,
                      items: <BottomNavigationBarItem>[
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.home,
                              size: 24,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              LineariconsFree.pie_chart,
                              size: 21,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              null,
                              size: 24,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              FontAwesome5.wallet,
                              size: 21,
                            ),
                            label: ''),
                        BottomNavigationBarItem(
                            icon: Icon(
                              Icons.notifications_outlined,
                              size: 24,
                            ),
                            label: ''),
                      ],
                      selectedItemColor: ColorConstants.kPrimaryColor,
                      unselectedItemColor: Colors.grey,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      onTap: state.onItemTapped,
                    ),
                  ),
                ),
              ));
    });
  }
}
