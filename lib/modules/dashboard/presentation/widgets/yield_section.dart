import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/colors.dart';
import '../../../../utils/ui/line_chart.dart';
import 'legend.dart';

class YieldSection extends StatelessWidget {
  final List<List<dynamic>> items;

  YieldSection({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Legend(
                title: 'Valor Aplicado',
                color: ColorConstants.kGradientColorsPrimary,
              ),
              Legend(
                title: 'Valor atual',
                color: ColorConstants.kGradientColorsSecondary,
              ),
            ],
          ),
          Container(
            height: 240,
            margin: EdgeInsets.symmetric(vertical: SpacingSizes.s32),
            child: LineChartWidget(
                gradientColorsPrimary: ColorConstants.kGradientColorsPrimary,
                gradientColorsSecondary:
                    ColorConstants.kGradientColorsSecondary,
                items: items),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _renderSectionItems('Saldo Bruto', 'R\$ 5000,00'),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: SpacingSizes.s8),
                  ),
                  _renderSectionItems('Valor Aplicado', 'R\$ 4700,00'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _renderSectionItems('Rentabilidade Total', '3,5%'),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: SpacingSizes.s8),
                  ),
                  _renderSectionItems('Primeiro Aporte', '01 de JUL 2021'),
                ],
              ),
            ],
          ),
        ],
      ));
}

Widget _renderSectionItems(String title, String value) => Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: ColorConstants.kSecondaryFontColor,
              fontSize: FontSizeConstants.s14),
        ),
        Text(
          value,
          style: TextStyle(
              color: ColorConstants.kFontColor,
              fontSize: FontSizeConstants.s18,
              fontWeight: FontWeight.bold),
        )
      ],
    );
