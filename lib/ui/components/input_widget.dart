import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/spacing_sizes.dart';

class InputWidget extends StatelessWidget {
  String placeholder;
  IconData? icon;
  TextInputType? textInputType;
  bool? obscureText;
  InputWidget(
      {Key? key,
      required this.placeholder,
      this.icon,
      this.textInputType,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        keyboardType: textInputType,
        style: TextStyle(color: ColorConstants.kInputTextColor),
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(SpacingSizes.s16),
          labelStyle: TextStyle(color: ColorConstants.kInputTextColor),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.kErrorColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          labelText: placeholder,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.kBorderColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: ColorConstants.kGreyColor800,
                )
              : null,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorConstants.kPrimaryColor),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      );
}
