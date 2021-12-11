import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColorsPrimary;
  final List<Color> gradientColorsSecondary;
  final List<List<dynamic>> items;

  LineChartWidget(
      {Key? key,
      required this.gradientColorsPrimary,
      required this.gradientColorsSecondary,
      required this.items})
      : super(key: key);

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
            titlesData: LineTitles.getTitleData(context),
            minX: 1,
            maxX: 12,
            minY: 0,
            maxY: 1000,
            gridData: FlGridData(
              show: false,
            ),
            borderData: FlBorderData(show: true, border: Border.all()),
            lineBarsData: _renderData(
                items, [gradientColorsPrimary, gradientColorsSecondary])),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      );
}

List<LineChartBarData> _renderData(
        final List<List<dynamic>> data, List<List<Color>> colors) =>
    data.map((item) {
      final color = data.indexOf(item) == 0 ? colors[0] : colors[1];
      return LineChartBarData(
          isCurved: true,
          colors: color,
          // dotData: FlDotData(show: false),
          belowBarData: BarAreaData(
              show: true,
              colors: color.map((color) => color.withOpacity(0.3)).toList()),
          spots: item
              .map(
                (spot) => FlSpot(spot['month'], spot['amount']),
              )
              .toList());
    }).toList();
