import '../../utils/ui/colors.dart';
import 'package:flutter/material.dart';

import '../../shared/widgets/back_header_widget.dart';
import '../../shared/widgets/option_widget.dart';

class AddInvestmentPage extends StatelessWidget {
  const AddInvestmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  BackHeader(
                    title: 'Adicionar Investimentos',
                    showIcon: false,
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 64),
                      child: Column(
                        children: [
                          OptionItem(
                            text: 'Ações/Fundos Imobiliários/ETF’s/BDR’s',
                            icon: Icons.chevron_right,
                            onTap: () {},
                            rightPosition: true,
                          ),
                          OptionItem(
                            text: 'Títulos de Renda Fixa',
                            icon: Icons.chevron_right,
                            onTap: () {},
                            rightPosition: true,
                          ),
                          OptionItem(
                            text: 'Tesouro Direto',
                            icon: Icons.chevron_right,
                            onTap: () {},
                            rightPosition: true,
                          ),
                          OptionItem(
                            text: 'Criptomoedas',
                            icon: Icons.chevron_right,
                            onTap: () {},
                            rightPosition: true,
                          ),
                        ],
                      ))
                ],
              )),
        ),
      );
}
