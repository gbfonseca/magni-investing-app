import 'package:magni_investing/ui/utils/colors.dart';
import 'package:magni_investing/ui/utils/radius_size.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  Color? textColor;
  Color? backgroundColor;
  double width;
  double? height = 50;
  PrimaryButton(
      {required this.onPressed,
      required this.text,
      this.textColor,
      this.backgroundColor,
      required this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize: Size(width, height ?? 50),
          primary: backgroundColor ?? ColorConstants.kGreyColor900,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(RadiusSize.s16)))),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? ColorConstants.kPrimaryColor),
      ),
    );
  }
}
