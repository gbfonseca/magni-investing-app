import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../start_store.dart';

class StartPage extends StatefulWidget {
  final String title;
  const StartPage({Key? key, this.title = 'StartPage'}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}

class StartPageState extends State<StartPage> {
  final StartStore store = Modular.get();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: RouterOutlet(),
        bottomNavigationBar: AnimatedBuilder(
          animation: store.pageViewController,
          builder: (context, snapshot) => BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (id) {
              if (id == 0) {
                Modular.to.navigate('/start/home/');
              }
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 32,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bar_chart_rounded,
                    size: 32,
                  ),
                  label: ''),
            ],
          ),
        ),
      );
}
