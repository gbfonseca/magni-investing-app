import '../../../../../../shared/widgets/card_portifolio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../../shared/widgets/header_widget.dart';
import '../../../../../../utils/colors.dart';
import 'stores/home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(23.0),
            child: Column(
              children: <Widget>[
                Header(
                  name: 'Gabriel F.',
                ),
                CardPortifolio(),
              ],
            ),
          ),
        ),
      );
}
