import 'package:flutter/material.dart';

import '../../../../utils/ui/pie_chart.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 240,
            child: PieCharWidget(),
          )
        ],
      ));
}
