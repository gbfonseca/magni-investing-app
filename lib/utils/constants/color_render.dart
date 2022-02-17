import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ui/colors.dart';

// ignore: avoid_classes_with_only_static_members
class ColorRender {
  static Color getColor(String title) {
    switch (title) {
      case 'Renda Variável':
        return ColorConstants.kPrimaryColor;
      case 'Renda Fixa':
        return ColorConstants.kSecondaryColor;
      case 'Tesouro Direto':
        return ColorConstants.kPurple;
      case 'Fundos Imobiliários':
        return Colors.cyan;
      case 'Criptomoedas':
        return Colors.amber;
      default:
        return ColorConstants.kPrimaryColor;
    }
  }
}
