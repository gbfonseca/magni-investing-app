import 'package:flutter/material.dart';

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
      height: MediaQuery.of(context).size.height,
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
            margin: EdgeInsets.only(top: SpacingSizes.s32),
            child: LineChartWidget(
                gradientColorsPrimary: ColorConstants.kGradientColorsPrimary,
                gradientColorsSecondary:
                    ColorConstants.kGradientColorsSecondary,
                items: items),
          ),
        ],
      ));
}
