import 'package:flutter/material.dart';

import '../../../utils/ui/colors.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
          child: Container(
        child: Text('Edit'),
      )));
}
