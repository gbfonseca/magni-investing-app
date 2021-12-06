import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../shared/widgets/back_header_widget.dart';
import '../../utils/ui/colors.dart';
import 'stores/settings_store.dart';

class SettingsPage extends StatelessWidget {
  final SettingsStore store = SettingsStore();
  SettingsPage({Key? key}) : super(key: key);

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
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  width: 0.5,
                  color: ColorConstants.kSecondaryFontColor,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.nightlight_outlined,
                          color: ColorConstants.kSecondaryFontColor,
                          size: 24,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Dark Mode',
                            style: TextStyle(
                                color: ColorConstants.kSecondaryFontColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18))
                      ],
                    ),
                    Observer(
                        builder: (_) => Switch(
                            value: store.isDarkMode,
                            onChanged: store.changeMode))
                  ],
                ),
              )
            ],
          ),
        )),
      );
}
