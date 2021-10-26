import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class OptionItem extends StatelessWidget {
  String text;
  IconData icon;
  void Function() onTap;
  OptionItem(
      {Key? key, required this.text, required this.icon, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(bottom: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 0.5,
          color: ColorConstants.kSecondaryFontColor,
        ))),
        child: GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      fontSize: 18))
            ],
          ),
        ),
      );
}
