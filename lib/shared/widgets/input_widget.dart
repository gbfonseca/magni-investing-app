import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class InputWidget extends StatelessWidget {
  String placeholder;
  IconData? icon;
  String formControlName;
  TextInputType? inputType;
  bool? obscureText;
  Map<String, String> Function(FormControl<dynamic>)? validationsMessages;
  InputWidget({
    Key? key,
    required this.placeholder,
    this.icon,
    required this.formControlName,
    this.inputType,
    this.obscureText,
    this.validationsMessages,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ReactiveTextField(
        formControlName: formControlName,
        keyboardType: inputType,
        obscureText: obscureText == true ? true : false,
        autocorrect: false,
        validationMessages: validationsMessages,
        decoration: InputDecoration(
          hintText: placeholder,
          prefixIcon: icon != null ? Icon(icon) : null,
        ),
      );
}
