import 'package:flutter/material.dart';

MaterialColor primaryColor() {
  var color = <int, Color>{
    50: const Color.fromRGBO(16, 95, 73, .1),
    100: const Color.fromRGBO(16, 95, 73, .2),
    200: const Color.fromRGBO(16, 95, 73, .3),
    300: const Color.fromRGBO(16, 95, 73, .4),
    400: const Color.fromRGBO(16, 95, 73, .5),
    500: const Color.fromRGBO(16, 95, 73, .6),
    600: const Color.fromRGBO(16, 95, 73, .7),
    700: const Color.fromRGBO(16, 95, 73, .8),
    800: const Color.fromRGBO(16, 95, 73, .9),
    900: const Color.fromRGBO(16, 95, 73, 1),
  };

  var primary = MaterialColor(0xFF105F49, color);
  return primary;
}
