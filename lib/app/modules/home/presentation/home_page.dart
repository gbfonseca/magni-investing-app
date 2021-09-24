import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';
import 'widgets/introduction_home.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
              child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 8.0, right: 8.0, top: 24, bottom: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'lib/app/assets/images/logo/logo.png',
                width: 189,
                height: 41,
              ),
              Expanded(flex: 1, child: IntroductionHome(items: store.value)),
              // ButtonWidget(
              //     text: 'Avançar',
              //     onPressed: () => Modular.to.navigate('/signin/'))
            ],
          ),
        ),
      )));
}
