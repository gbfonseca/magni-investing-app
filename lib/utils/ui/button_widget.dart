import 'package:flutter/material.dart';

/// Global Widget of Button
class ButtonWidget extends StatelessWidget {
  /// Declare a String var
  String text;

  /// Declare a function var

  void Function() onPressed;

  /// Must be receive one text and function
  ButtonWidget({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(329, 53),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)))),
      );
}
