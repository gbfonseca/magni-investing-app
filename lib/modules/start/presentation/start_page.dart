import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../dashboard/dashboard_page.dart';
import '../../home/presentation/home_page.dart';
import 'stores/start_store.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final StartStore store = StartStore();

  final List<Widget> screensList = [HomePage(), DashboardPage()];

  int selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      if (index == 2) {
        return null;
      }
      selectedIndex = index;
      store.pageViewController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: PageView(
            onPageChanged: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            controller: store.pageViewController,
            children: [HomePage(), DashboardPage()]),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: ColorConstants.kPrimaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed('/start/add_investment/');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
              currentIndex: selectedIndex,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 28,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.bar_chart,
                      size: 28,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      null,
                      size: 28,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 28,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline,
                      size: 28,
                    ),
                    label: ''),
              ],
              selectedItemColor: ColorConstants.kPrimaryColor,
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: _onItemTapped,
            ),
          ),
        ),
      );
}
