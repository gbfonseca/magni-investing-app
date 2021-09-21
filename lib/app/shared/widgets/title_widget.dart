import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class TitleWidget extends StatelessWidget {
  String text;
  TitleWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(
            color: ColorConstats.kFontColor,
            fontSize: FontSizeConstants.s32,
            fontWeight: FontWeight.bold),
      );
}
