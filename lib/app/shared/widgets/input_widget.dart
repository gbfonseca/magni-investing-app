import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String placeholder;
  IconData? icon;
  TextEditingController controller;
  TextInputType? inputType;
  bool? obscureText;

  InputWidget(
      {Key? key,
      required this.placeholder,
      this.icon,
      required this.controller,
      this.inputType,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        keyboardType: inputType,
        obscureText: obscureText == true ? true : false,
        autocorrect: false,
        decoration: InputDecoration(
          hintText: placeholder,
          prefixIcon: icon != null ? Icon(icon) : null,
        ),
      );
}
