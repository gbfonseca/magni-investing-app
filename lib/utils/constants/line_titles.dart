import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

import '../ui/colors.dart';
import 'sizes.dart';

// ignore: avoid_classes_with_only_static_members
class LineTitles {
  static getTitleData(BuildContext context) => FlTitlesData(
      show: true,
      rightTitles: SideTitles(showTitles: false),
      topTitles: SideTitles(showTitles: false),
      bottomTitles: SideTitles(
        showTitles: true,
        margin: 8,
        reservedSize: 22,
        getTextStyles: (context, value) => TextStyle(
            color: ColorConstants.kFontColor,
            fontWeight: FontWeight.normal,
            fontSize: FontSizeConstants.s16),
        // getTitles: (value) {
        //   switch (value.toInt()) {
        //     case 0:
        //       return 'JAN';
        //     case 1:
        //       return 'FEV';
        //     case 2:
        //       return 'MAR';
        //     case 3:
        //       return 'ABR';
        //     case 4:
        //       return 'MAI';
        //     case 5:
        //       return 'JUN';
        //     case 6:
        //       return 'JUL';
        //     case 7:
        //       return 'AGO';
        //     case 8:
        //       return 'SET';
        //     case 9:
        //       return 'OUT';
        //     case 10:
        //       return 'NOV';
        //     case 11:
        //       return 'DEZ';
        //     default:
        //   }
        //   return '';
        // },
      ));
}
