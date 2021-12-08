import 'package:flutter/material.dart';

import '../../../../utils/ui/line_chart.dart';

class YieldSection extends StatelessWidget {
  const YieldSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 240,
            child: LineChartWidget(),
          )
        ],
      ));
}
