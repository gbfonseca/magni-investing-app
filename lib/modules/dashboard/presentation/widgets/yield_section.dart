import 'package:flutter/material.dart';

import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/line_chart.dart';
import 'legend.dart';

class YieldSection extends StatelessWidget {
  const YieldSection({Key? key}) : super(key: key);

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
                color: Colors.red,
              ),
              Legend(
                title: 'Valor atual',
                color: Colors.green,
              ),
            ],
          ),
          Container(
            height: 240,
            margin: EdgeInsets.only(top: SpacingSizes.s32),
            child: LineChartWidget(),
          ),
        ],
      ));
}
