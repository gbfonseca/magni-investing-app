import 'package:flutter/material.dart';

import '../../../../../../../utils/colors.dart';

class SectionHeaderWidget extends StatelessWidget {
  String title;
  void Function() onTap;
  SectionHeaderWidget({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(bottom: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.kFontColor),
            ),
            GestureDetector(
              onTap: onTap,
              child: Text(
                'Ver mais',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.kSecondaryColor),
              ),
            )
          ],
        ),
      );
}
