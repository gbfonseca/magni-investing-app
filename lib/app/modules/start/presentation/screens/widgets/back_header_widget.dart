import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class BackHeader extends StatelessWidget {
  String title;
  bool? showIcon = false;
  BackHeader({Key? key, required this.title, this.showIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.kFontColor,
              size: 24,
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: ColorConstants.kFontColor,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          showIcon == true
              ? Icon(
                  Icons.person_outline,
                  color: ColorConstants.kFontColor,
                  size: 24,
                )
              : Container()
        ],
      );
}
