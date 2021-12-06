import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/ui/colors.dart';

class SubTitleWidget extends StatelessWidget {
  String text;
  SubTitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(
            color: ColorConstants.kSecondaryFontColor,
            fontSize: FontSizeConstants.s18,
            fontWeight: FontWeight.w500),
      );
}
