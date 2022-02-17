import 'package:flutter/material.dart';

MaterialColor primaryColor() {
  var color = <int, Color>{
    50: const Color.fromRGBO(0, 166, 153, .1),
    100: const Color.fromRGBO(0, 166, 153, .2),
    200: const Color.fromRGBO(0, 166, 153, .3),
    300: const Color.fromRGBO(0, 166, 153, .4),
    400: const Color.fromRGBO(0, 166, 153, .5),
    500: const Color.fromRGBO(0, 166, 153, .6),
    600: const Color.fromRGBO(0, 166, 153, .7),
    700: const Color.fromRGBO(0, 166, 153, .8),
    800: const Color.fromRGBO(0, 166, 153, .9),
    900: const Color.fromRGBO(0, 166, 153, 1),
  };

  var primary = MaterialColor(0xFF00A699, color);
  return primary;
}
