import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class SubTitleWidget extends StatelessWidget {
  String text;
  SubTitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(
            color: ColorConstats.kSecondaryFontColor,
            fontSize: FontSizeConstants.s18,
            fontWeight: FontWeight.w500),
      );
}
