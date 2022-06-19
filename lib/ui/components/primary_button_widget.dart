import 'package:ezwallet_mobile/ui/utils/colors.dart';
import 'package:ezwallet_mobile/ui/utils/radius_size.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  void Function()? onPressed;
  String text;
  Color? textColor;
  Color? backgroundColor;
  double? width;
  double? height;
  PrimaryButton(
      {required this.onPressed,
      required this.text,
      this.textColor,
      this.backgroundColor,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    width = width ?? MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          fixedSize:
              Size(width ?? MediaQuery.of(context).size.width, height ?? 54),
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
