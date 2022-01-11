import '../../utils/ui/touchable_opacity.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
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
              Container(
                margin: EdgeInsets.symmetric(vertical: SpacingSizes.s24),
                child: Text(
                  'Conta Primária',
                  style: TextStyle(
                    color: ColorConstants.kFontColor,
                    fontSize: FontSizeConstants.s16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              renderWallet(context, 'Carteira RICO'),
              Container(
                margin: EdgeInsets.symmetric(vertical: SpacingSizes.s24),
                child: Text(
                  'Demais contas',
                  style: TextStyle(
                    color: ColorConstants.kFontColor,
                    fontSize: FontSizeConstants.s16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              renderWallet(context, 'Carteira Nuinvest')
            ],
          ),
        ),
      )));
}

Widget renderWallet(BuildContext context, String name) => Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 6,
                height: 64,
                margin: EdgeInsets.only(right: SpacingSizes.s16),
                decoration: BoxDecoration(
                    color: ColorConstants.kPrimaryColor,
                    borderRadius: BorderRadius.circular(5)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: TextStyle(
                        color: ColorConstants.kFontColor,
                        fontSize: FontSizeConstants.s16,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Text(r'R$ 1800,69',
                      style: TextStyle(
                        color: ColorConstants.kSecondaryColor,
                        fontSize: FontSizeConstants.s14,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ],
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
