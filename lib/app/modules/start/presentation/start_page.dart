import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../utils/colors.dart';
import 'stores/start_store.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final StartStore store = Modular.get();

  int selectedIndex = 0;

  _onItemTapped(int index) {
    if (index == 0) {
      Modular.to.navigate('/start/home/');
    } else if (index == 1) {
      Modular.to.navigate('/start/dashboard/');
    }

    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: RouterOutlet(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: ColorConstants.kPrimaryColor,
          onPressed: () {
            Navigator.of(context).pushNamed('/start/add_options');
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
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
      );
}
