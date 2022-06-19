import 'package:ezwallet_mobile/ui/utils/colors.dart';
import 'package:flutter/material.dart';

Widget createWidgetForTesting({required Widget child}) {
  return MaterialApp(
    theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: ColorConstants.kPrimaryColor),
    home: child,
  );
}
