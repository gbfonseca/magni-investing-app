import 'package:flutter/material.dart';

import '../../../../../utils/ui/colors.dart';

class OptionItem extends StatelessWidget {
  String text;
  IconData icon;
  void Function() onTap;
  bool? rightPosition = false;
  OptionItem(
      {Key? key,
      required this.text,
      required this.icon,
      required this.onTap,
      this.rightPosition})
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(bottom: 16),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            width: 0.5,
            color: ColorConstants.kSecondaryFontColor,
          ))),
          child: Row(
            mainAxisAlignment: rightPosition == true
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: rightPosition == true
                ? [
                    Text(text,
                        style: TextStyle(
                            color: ColorConstants.kSecondaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    SizedBox(
                      width: 8,
                    ),
                    Icon(
                      icon,
                      color: ColorConstants.kSecondaryFontColor,
                      size: 24,
                    ),
                  ]
                : [
                    Icon(
                      icon,
                      color: ColorConstants.kSecondaryFontColor,
                      size: 24,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(text,
                        style: TextStyle(
                            color: ColorConstants.kSecondaryFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16))
                  ],
          ),
        ),
      );
}
