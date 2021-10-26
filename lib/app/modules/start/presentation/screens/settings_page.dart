import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import 'widgets/back_header_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
            child: Container(
          padding: EdgeInsets.all(23),
          child: Column(
            children: [
              BackHeader(
                title: 'Configurações',
                showIcon: false,
              )
            ],
          ),
        )),
      );
}
