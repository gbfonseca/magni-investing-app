import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackBarUtil {
  showSnackBar(context, String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
