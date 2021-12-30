import 'package:flutter/material.dart';

import '../../../shared/widgets/back_header_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';

class AddStocksPage extends StatelessWidget {
  const AddStocksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
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
              ],
            ),
          ),
        ),
      );
}
