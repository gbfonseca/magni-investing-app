import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import '../../providers/wallet_provider.dart';
import '../../shared/models/wallet_model.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';
import '../../utils/ui/touchable_opacity.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Consumer<WalletProvider>(
      builder: (builder, _walletProvider, child) => Scaffold(
          backgroundColor: ColorConstants.kBackgroundColor,
          body: SafeArea(
              child: SingleChildScrollView(
            child: ValueListenableBuilder(
                valueListenable: walletProvider.wallets,
                builder: (_, __, ___) {
                  final wallets = walletProvider.wallets.value;
                  return Container(
                    padding: EdgeInsets.all(SpacingSizes.s24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Carteiras',
                              style: TextStyle(
                                color: ColorConstants.kFontColor,
                                fontSize: FontSizeConstants.s32,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            renderButton(Icons.add, () {})
                          ],
                        ),
                        wallets.isEmpty
                            ? Container(
                                margin: EdgeInsets.only(top: SpacingSizes.s64),
                                child: Center(
                                  child: Text(
                                    'Você não tem nenhuma carteira registrada.',
                                    style: TextStyle(
                                      color: ColorConstants.kFontColor,
                                      fontSize: FontSizeConstants.s16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: SpacingSizes.s24),
                                    child: Text(
                                      'Carteira Primária',
                                      style: TextStyle(
                                        color: ColorConstants.kFontColor,
                                        fontSize: FontSizeConstants.s16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  renderWallet(
                                    context,
                                    wallets.first,
                                    ColorConstants.kPrimaryColor,
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: SpacingSizes.s24),
                                    child: Text(
                                      'Demais carteiras',
                                      style: TextStyle(
                                        color: ColorConstants.kFontColor,
                                        fontSize: FontSizeConstants.s16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  ...wallets.map((wallet) =>
                                      wallets.indexOf(wallet) != 0
                                          ? Container(
                                              margin: EdgeInsets.only(
                                                  bottom: SpacingSizes.s24),
                                              child: renderWallet(
                                                  context,
                                                  wallet,
                                                  ColorConstants
                                                      .kSecondaryColor))
                                          : Container())
                                ],
                              )
                      ],
                    ),
                  );
                }),
          ))));
}

Widget renderWallet(BuildContext context, WalletModel wallet, Color color) =>
    Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TouchableOpacity(
            onTap: () {},
            child: Row(
              children: [
                Container(
                  width: 6,
                  height: 64,
                  margin: EdgeInsets.only(right: SpacingSizes.s16),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(5)),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(wallet.name,
                        style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontSize: FontSizeConstants.s16,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 8,
                    ),
                    Text('${wallet.variableIncome.currentValue}',
                        style: TextStyle(
                          color: ColorConstants.kSecondaryColor,
                          fontSize: FontSizeConstants.s14,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          renderButton(Entypo.arrows_ccw, () {})
        ],
      ),
    );

Widget renderButton(IconData icon, void Function() onTap) => TouchableOpacity(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        child: Icon(
          icon,
          color: ColorConstants.kSecondaryFontColor,
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 3,
                offset: Offset(0, 4),
              )
            ]),
      ),
    );
