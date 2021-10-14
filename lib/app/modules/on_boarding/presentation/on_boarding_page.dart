import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'on_boarding_store.dart';
import 'widgets/introduction_on_boarding.dart';

class OnBoardingPage extends StatefulWidget {
  final String title;
  const OnBoardingPage({Key? key, this.title = "OnBoarding"}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final OnBoardingStore store = Modular.get();

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
              Expanded(
                  flex: 1, child: IntroductionOnBoarding(items: store.value)),
              // ButtonWidget(
              //     text: 'Avançar',
              //     onPressed: () => Modular.to.navigate('/signin/'))
            ],
          ),
        ),
      )));
}
