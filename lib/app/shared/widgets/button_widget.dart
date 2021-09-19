import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  void Function() onPressed;
  ButtonWidget({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
}
