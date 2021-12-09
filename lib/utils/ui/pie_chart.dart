import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class PieCharWidget extends StatelessWidget {
  PieCharWidget({Key? key}) : super(key: key);

  final List<double> items = [500.0, 300, 700, 2500, 1200];

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
        value: item, color: _getColor(data.indexOf(item)), radius: 120))
    .toList();

Color _getColor(int index) {
  switch (index) {
    case 0:
      return ColorConstants.kPrimaryColor;
    case 1:
      return ColorConstants.kSecondaryColor;
    case 2:
      return ColorConstants.kPurple;
    case 3:
      return Colors.cyan;
    case 4:
      return Colors.amber;
    default:
      return ColorConstants.kPrimaryColor;
  }
}
