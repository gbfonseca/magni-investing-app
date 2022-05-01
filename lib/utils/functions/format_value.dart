mixin FormatValue {
  static doubleToString(double value) =>
      value.toStringAsFixed(2).replaceFirst(r'.', ',');
}
