import 'package:flutter/material.dart';

MaterialColor primaryColor() {
  Map<int, Color> color = {
    50: const Color.fromRGBO(84, 69, 155, .1),
    100: const Color.fromRGBO(84, 69, 155, .2),
    200: const Color.fromRGBO(84, 69, 155, .3),
    300: const Color.fromRGBO(84, 69, 155, .4),
    400: const Color.fromRGBO(84, 69, 155, .5),
    500: const Color.fromRGBO(84, 69, 155, .6),
    600: const Color.fromRGBO(84, 69, 155, .7),
    700: const Color.fromRGBO(84, 69, 155, .8),
    800: const Color.fromRGBO(84, 69, 155, .9),
    900: const Color.fromRGBO(84, 69, 155, 1),
  };

  MaterialColor primary = MaterialColor(0xFF54459B, color);
  return primary;
}
