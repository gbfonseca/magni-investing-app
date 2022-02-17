import 'package:flutter/material.dart';

import '../../../../../../../utils/ui/colors.dart';
import '../../../../utils/constants/spacing_sizes.dart';

class RecentCardWidget extends StatelessWidget {
  String type;
  double value;
  String walletName;
  RecentCardWidget(
      {Key? key,
      required this.type,
      required this.value,
      required this.walletName})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 192,
        height: 110,
        padding: EdgeInsets.all(SpacingSizes.s16),
        margin: EdgeInsets.only(
            right: SpacingSizes.s16,
            top: SpacingSizes.s8,
            bottom: SpacingSizes.s8,
            left: SpacingSizes.s8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: Offset(0, 2),
              )
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 5,
              height: double.infinity,
              color: type == 'Compra'
                  ? ColorConstants.kPurple
                  : ColorConstants.kGreen,
              margin: EdgeInsets.only(right: SpacingSizes.s16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$type - BBAS3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.kFontColor,
                  ),
                ),
                Text(
                  'R\$ $value',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: ColorConstants.kSecondaryFontColor),
                ),
                Text(
                  walletName,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                      color: ColorConstants.kSecondaryFontColor),
                )
              ],
            )
          ],
        ),
      );
}
