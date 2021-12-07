import 'package:flutter/material.dart';

import '../../../../../../../utils/ui/colors.dart';
import '../../../../utils/constants/spacing_sizes.dart';

class CardWidget extends StatelessWidget {
  String title;
  String imagePath;
  double balance;
  double variation;
  CardWidget(
      {Key? key,
      required this.title,
      required this.imagePath,
      required this.balance,
      required this.variation})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        width: 200,
        height: 130,
        padding: EdgeInsets.all(SpacingSizes.s16),
        margin: EdgeInsets.only(
            right: SpacingSizes.s16,
            top: SpacingSizes.s8,
            bottom: SpacingSizes.s8,
            left: SpacingSizes.s8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 7,
                offset: Offset(0, 2),
              )
            ]),
        child: Column(children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 32,
                height: 32,
              ),
              SizedBox(
                width: 12,
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.kFontColor))
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Saldo Atual',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: ColorConstants.kFontColor)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('R\$ $balance',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.kFontColor)),
                  Row(
                    children: [
                      Icon(
                        variation > 0
                            ? Icons.arrow_drop_up
                            : Icons.arrow_drop_down,
                        color: variation > 0
                            ? Colors.greenAccent.shade700
                            : Colors.redAccent.shade700,
                      ),
                      Text('${variation.toString()}%',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.kFontColor))
                    ],
                  )
                ],
              )
            ],
          )
        ]),
      );
}
