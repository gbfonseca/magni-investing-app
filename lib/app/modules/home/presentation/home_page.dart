import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';

import './widgets/carousel_slider_widget.dart';
import '../../../shared/widgets/button_widget.dart';
import '../domain/models/carousel_items.dart';
import '../home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) => Scaffold(
          body: SafeArea(
        child: ScopedBuilder<HomeStore, Exception, List<CarouselItems>>(
            store: store,
            onState: (_, carouselItems) => SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, top: 24, bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/images/logo/logo.png',
                          width: 189,
                          height: 41,
                        ),
                        Expanded(
                            flex: 1,
                            child: SliderCarousel(items: carouselItems)),
                        ButtonWidget(text: 'Avançar', onPressed: () {})
                      ],
                    ),
                  ),
                )),
      ));
}
