import 'package:flutter/material.dart';

import '../../../../shared/widgets/large_card_portfolio.dart';
import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/pie_chart.dart';

class PortfolioSection extends StatelessWidget {
  final List<dynamic> items;

  PortfolioSection({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: SpacingSizes.s48),
            height: 240,
            child: PieCharWidget(
              items: items,
            ),
          ),
          ...items
              .map(
                (item) => LargeCardPortifolio(
                  title: item['title'],
                  balance: item['balance'],
                  variation: item['variation'],
                  variationInCurrency: item['variationInCurrency'],
                ),
              )
              .toList()
        ],
      ));
}
