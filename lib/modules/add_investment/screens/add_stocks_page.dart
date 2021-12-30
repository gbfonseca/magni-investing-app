import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../shared/widgets/back_header_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/input_dropdown.dart';
import '../notifiers/add_stocks_notifier.dart';

class AddStocksPage extends HookWidget {
  var items = <String>['BBAS3.SA', 'CPLE6.SA', 'FBOK34.SA', 'AAPL.US'];
  AddStocksPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final addStocksNotifier = useListenable(AddStocksNotifier());
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(SpacingSizes.s24),
          child: Column(
            children: [
              BackHeader(
                title: 'Ações/Fundos Imobiliários/ETF’s/BDR’s',
                showIcon: false,
              ),
              SizedBox(
                height: SpacingSizes.s16,
              ),
              InputDropdown(
                items: items,
                controller: addStocksNotifier.controller.value,
                onChangeText: addStocksNotifier.onChangeText,
                onSelectItem: addStocksNotifier.onSelectItem,
                focusNode: addStocksNotifier.focusNode,
              )
            ],
          ),
        ),
      ),
    );
  }
}
