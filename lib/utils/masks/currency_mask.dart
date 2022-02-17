import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';

final List<TextInputFormatter> currencyFormat = [
  FilteringTextInputFormatter.digitsOnly,
  CentavosInputFormatter()
];
