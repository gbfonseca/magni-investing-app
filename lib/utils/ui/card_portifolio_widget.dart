import 'package:flutter/material.dart';

import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';

class CardPortifolio extends StatelessWidget {
  String balance;
  double variation;
  double variationInCurrency;
  CardPortifolio(
      {Key? key,
      required this.balance,
      required this.variation,
      required this.variationInCurrency})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin:
            EdgeInsets.only(top: SpacingSizes.s24, bottom: SpacingSizes.s40),
        padding: EdgeInsets.all(SpacingSizes.s16),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Portifólio',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "R\$ $balance",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Rendimento',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_drop_up,
                      color: Colors.greenAccent.shade700,
                    ),
                    Text(
                      "$variation%",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "R\$ $variationInCurrency",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              ],
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: ColorConstants.kPrimaryColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              )
            ]),
      );
}
