import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class InputWidget extends StatelessWidget {
  String placeholder;
  IconData? icon;
  void Function(String) onChanged;
  TextInputType? inputType;
  bool? obscureText;
  String? error;
  InputWidget(
      {Key? key,
      required this.placeholder,
      this.icon,
      required this.onChanged,
      this.inputType,
      this.obscureText,
      this.error})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        onChanged: onChanged,
        keyboardType: inputType,
        obscureText: obscureText == true ? true : false,
        autocorrect: false,
        decoration: InputDecoration(
            hintText: placeholder,
            prefixIcon: icon != null ? Icon(icon) : null,
            errorText: error),
      );
}
