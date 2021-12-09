import 'package:flutter/material.dart';

import '../../../../shared/widgets/large_card_portfolio.dart';
import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/pie_chart.dart';

class PortfolioSection extends StatelessWidget {
  final List<dynamic> items = [
    {
      'id': 1,
      'title': 'Renda Variável',
      'balance': 500.00,
      'variation': 5.0,
      'variationInCurrency': 550.00
    },
    {
      'id': 2,
      'title': 'Renda Fixa',
      'balance': 1000.00,
      'variation': 10.0,
      'variationInCurrency': 1100.00
    },
    {
      'id': 3,
      'title': 'Tesouro Direto',
      'balance': 1200.00,
      'variation': 1.0,
      'variationInCurrency': 1220.00
    },
    {
      'id': 4,
      'title': 'Fundos Imobiliários',
      'balance': 2000.00,
      'variation': 15.0,
      'variationInCurrency': 2300.00
    },
    {
      'id': 5,
      'title': 'Criptomoedas',
      'balance': 1500.00,
      'variation': 20.0,
      'variationInCurrency': 1800.00
    },
  ];

  PortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        flex: 1,
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
        ),
      ));
}
