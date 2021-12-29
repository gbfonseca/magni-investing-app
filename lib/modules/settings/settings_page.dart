import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../shared/widgets/back_header_widget.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/colors.dart';
import 'notifiers/settings.dart';

class SettingsPage extends HookWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = useListenable(SettingsNotifier());
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(SpacingSizes.s24),
        child: Column(
          children: [
            BackHeader(
              title: 'Configurações',
              showIcon: false,
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              margin: EdgeInsets.only(bottom: SpacingSizes.s16),
              padding: EdgeInsets.all(SpacingSizes.s16),
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
                  ValueListenableBuilder(
                      valueListenable: store.themeType,
                      builder: (_, __, ___) => Switch(
                          value: store.isDarkMode, onChanged: store.changeMode))
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
