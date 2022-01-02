import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/modern_pictograms_icons.dart';

import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/option_widget.dart';

class StartNotifier extends ChangeNotifier {
  ValueNotifier<int> selectedIndex = ValueNotifier(0);

  void onItemTapped(int index) {
    selectedIndex.value = index;

    selectedIndex.notifyListeners();
  }

  Future renderModalAddActions(BuildContext context) =>
      showModalBottomSheet<void>(
          context: context,
          builder: (context) => Container(
              height: 220,
              width: 120,
              padding: EdgeInsets.all(SpacingSizes.s16),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  OptionItem(
                      text: 'Nova Aplicação',
                      icon: FontAwesome5.hand_holding_usd,
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed('/start/add_investment/');
                      }),
                  OptionItem(
                      text: 'Resgatar Produto',
                      icon: ModernPictograms.money,
                      onTap: () {}),
                  OptionItem(
                      text: 'Novo Produto',
                      icon: Icons.add_shopping_cart,
                      onTap: () {}),
                ],
              )));
}
