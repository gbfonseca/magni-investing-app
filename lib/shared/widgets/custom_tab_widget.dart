import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';

class CustomTab extends StatelessWidget {
  final int id;
  final String title;
  final int selectedId;
  void Function(int id) setSelectedId;
  CustomTab(
      {Key? key,
      required this.id,
      required this.title,
      required this.selectedId,
      required this.setSelectedId})
      : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          setSelectedId(id);
        },
        child: Container(
            width: 100,
            alignment: Alignment.center,
            padding: EdgeInsets.all(SpacingSizes.s8),
            decoration: selectedId == id
                ? BoxDecoration(
                    border: Border(
                    bottom: BorderSide(
                        width: 2, color: ColorConstants.kPrimaryColor),
                  ))
                : BoxDecoration(),
            child: Text(
              title,
              style: TextStyle(
                  color: ColorConstants.kFontColor,
                  fontSize: FontSizeConstants.s14,
                  fontWeight: FontWeight.normal),
            )),
      );
}
