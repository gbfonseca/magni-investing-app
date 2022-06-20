import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/radius_size.dart';

class SocialButton extends StatelessWidget {
  IconData icon;
  double iconSize;
  SocialButton({Key? key, required this.icon, required this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorConstants.kGreyColor950,
            fixedSize: const Size.fromHeight(54),
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(RadiusSize.s16))),
            side: const BorderSide(
                width: 0.5, color: ColorConstants.kGreyColor800)),
        onPressed: () {},
        child: Icon(
          icon,
          color: Colors.white,
          size: iconSize,
        ),
      );
}
