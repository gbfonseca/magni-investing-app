import 'package:flutter/material.dart';

import '../../utils/constants/color_render.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';

class LargeCardPortifolio extends StatelessWidget {
  double balance;
  double variation;
  double variationInCurrency;
  String title;

  LargeCardPortifolio(
      {Key? key,
      required this.balance,
      required this.variation,
      required this.variationInCurrency,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(SpacingSizes.s16),
        margin: EdgeInsets.symmetric(vertical: SpacingSizes.s16),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ],
            borderRadius: BorderRadius.all(Radius.circular(12))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 5,
                  height: double.infinity,
                  color: ColorRender.getColor(title),
                  margin: EdgeInsets.only(right: SpacingSizes.s16),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizeConstants.s18),
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    Text(
                      'Valor Aplicado',
                      style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontWeight: FontWeight.normal,
                          fontSize: FontSizeConstants.s14),
                    ),
                    Text(
                      'R\$ $balance',
                      style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: FontSizeConstants.s18),
                    ),
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      variation > 0
                          ? Icons.arrow_drop_up
                          : Icons.arrow_drop_down,
                      color: variation > 0
                          ? ColorConstants.kSecondaryColor
                          : ColorConstants.kRed,
                    ),
                    Text('$variation %',
                        style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontWeight: FontWeight.normal,
                          fontSize: FontSizeConstants.s14,
                        ))
                  ],
                ),
                SizedBox(
                  height: SpacingSizes.s16,
                ),
                Text(
                  'Valor Atual',
                  style: TextStyle(
                      color: ColorConstants.kFontColor,
                      fontWeight: FontWeight.normal,
                      fontSize: FontSizeConstants.s14),
                ),
                Text(
                  'R\$ $variationInCurrency',
                  style: TextStyle(
                      color: variationInCurrency >= balance
                          ? ColorConstants.kSecondaryColor
                          : ColorConstants.kRed,
                      fontWeight: FontWeight.bold,
                      fontSize: FontSizeConstants.s18),
                )
              ],
            )
          ],
        ),
      );
}
