import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth_provider.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/card_portifolio_widget.dart';
import '../../../utils/ui/colors.dart';
import 'widgets/card_widget.dart';
import 'widgets/recent_card_widget.dart';
import 'widgets/section_header_widget.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: Consumer<AuthProviderNotifier>(
            builder: (context, _authStore, child) {
          _authStore.getUser();
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: SpacingSizes.s24),
                child: Column(
                  children: <Widget>[
                    CardPortifolio(
                      balance: 7390.52,
                      variation: 5.4,
                      variationInCurrency: 32.95,
                    ),
                    SectionHeaderWidget(
                      title: 'Meu portifólio',
                      onTap: () {},
                    ),
                    Container(
                      height: 140,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CardWidget(
                            title: 'Renda Variável',
                            imagePath: 'lib/assets/images/income/income.png',
                            balance: 4951.72,
                            variation: 5.2,
                          ),
                          CardWidget(
                            title: 'Renda Fixa',
                            imagePath:
                                'lib/assets/images/fixed-interest/fixed-interest.png',
                            balance: 2012.20,
                            variation: -2.2,
                          ),
                          CardWidget(
                            title: "FII's",
                            imagePath:
                                'lib/assets/images/real-state/real-state.png',
                            balance: 1754.23,
                            variation: 3.7,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SectionHeaderWidget(
                      title: 'Transações Recentes',
                      onTap: () {},
                    ),
                    Container(
                      height: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RecentCardWidget(
                            type: 'Compra',
                            value: 30.01,
                            walletName: 'RICO',
                          ),
                          RecentCardWidget(
                            type: 'Venda',
                            value: 30.01,
                            walletName: 'XP',
                          ),
                          RecentCardWidget(
                            type: 'Venda',
                            value: 30.01,
                            walletName: 'RICO',
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      );
}
