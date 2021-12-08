import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class PieCharWidget extends StatelessWidget {
  const PieCharWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => PieChart(
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 500,
              color: ColorConstants.kPrimaryColor,
            ),
            PieChartSectionData(
                value: 1200, color: ColorConstants.kSecondaryColor),
            PieChartSectionData(value: 300, color: ColorConstants.kFontColor),
            PieChartSectionData(value: 2500, color: ColorConstants.kPurple),
            PieChartSectionData(
                value: 700, color: ColorConstants.kSecondaryFontColor),
          ],
        ),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.bounceIn, // Optional
      );
}
