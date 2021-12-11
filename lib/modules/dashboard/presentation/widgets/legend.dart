import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/spacing_sizes.dart';
import '../../../../utils/ui/colors.dart';

class Legend extends StatelessWidget {
  final String title;
  final Color color;
  Legend({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.only(right: SpacingSizes.s8),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(20)),
          ),
          Text(
            title,
            style: TextStyle(
                color: ColorConstants.kFontColor,
                fontSize: FontSizeConstants.s14,
                fontWeight: FontWeight.normal),
          )
        ],
      );
}
