import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../constants/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  LineChartWidget({Key? key}) : super(key: key);

  final List<Color> gradientColorsPrimary = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];
  final List<Color> gradientColorsSecondary = [
    const Color(0xff42275a),
    const Color(0xff734b6d),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
            titlesData: LineTitles.getTitleData(context),
            minX: 0,
            maxX: 12,
            minY: 0,
            maxY: 1000,
            gridData: FlGridData(
              show: false,
            ),
            borderData: FlBorderData(show: true, border: Border.all()),
            lineBarsData: [
              LineChartBarData(
                  isCurved: true,
                  colors: gradientColorsPrimary,
                  // dotData: FlDotData(show: true),
                  belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColorsPrimary
                          .map((color) => color.withOpacity(0.3))
                          .toList()),
                  spots: [
                    FlSpot(0, 0),
                    FlSpot(1, 250),
                    FlSpot(3, 500),
                    FlSpot(10, 900)
                  ]),
              LineChartBarData(
                  isCurved: true,
                  colors: gradientColorsSecondary,
                  // dotData: FlDotData(show: false),
                  belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColorsSecondary
                          .map((color) => color.withOpacity(0.3))
                          .toList()),
                  spots: [
                    FlSpot(0, 0),
                    FlSpot(1, 400),
                    FlSpot(3, 700),
                    FlSpot(10, 800)
                  ])
            ]),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      );
}
