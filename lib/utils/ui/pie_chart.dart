import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/color_render.dart';

class PieCharWidget extends StatelessWidget {
  final List<dynamic> items;
  PieCharWidget({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) => PieChart(
        PieChartData(
          pieTouchData: PieTouchData(enabled: true),
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          sections: _renderData(items),
        ),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.bounceIn, // Optional
      );
}

List<PieChartSectionData> _renderData(List<dynamic> data) => data
    .map((item) => PieChartSectionData(
        value: item['variationInCurrency'],
        titleStyle: TextStyle(color: Colors.white),
        color: ColorRender.getColor(item['title']),
        radius: 120))
    .toList();
