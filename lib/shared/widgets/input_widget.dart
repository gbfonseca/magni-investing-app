import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../utils/colors.dart';

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
          contentPadding: EdgeInsets.all(16),
          labelText: placeholder,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFe2e2e2)),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          prefixIcon: icon != null ? Icon(icon) : null,
        ),
      );
}
