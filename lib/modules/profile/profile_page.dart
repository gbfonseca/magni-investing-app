import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../utils/constants/spacing_sizes.dart';
import '../../utils/ui/back_header_widget.dart';
import '../../utils/ui/colors.dart';
import '../../utils/ui/option_widget.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Consumer<AuthProviderNotifier>(
        builder: (context, _authStore, child) => Scaffold(
          backgroundColor: ColorConstants.kBackgroundColor,
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(SpacingSizes.s24),
              child: Column(
                children: [
                  BackHeader(
                    title: 'Meu Perfil',
                    showIcon: true,
                    icon: FontAwesome5.user_edit,
                    onTap: () {
                      Navigator.of(context).pushNamed('/start/edit_profile/');
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: SpacingSizes.s64),
                    child: Hero(
                      tag: 'avatar',
                      child: CircleAvatar(
                        backgroundColor: ColorConstants.kPrimaryColor,
                        radius: 56,
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: ColorConstants.kPrimaryColor, width: 4)),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: SpacingSizes.s32, bottom: SpacingSizes.s72),
                    child: Text(
                        "${_authStore.user.value.name} ${_authStore.user.value.lastName}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: ColorConstants.kFontColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24)),
                  ),
                  OptionItem(
                    text: 'Configurações',
                    icon: Icons.settings_outlined,
                    onTap: () {
                      Navigator.of(context).pushNamed('/start/settings/');
                    },
                  ),
                  OptionItem(
                    text: 'Atendimento',
                    icon: Icons.call_outlined,
                    onTap: () {},
                  ),
                  OptionItem(
                    text: 'Avalie o app',
                    icon: Icons.star_outline_rounded,
                    onTap: () {},
                  ),
                  OptionItem(
                    text: 'Sair',
                    icon: Icons.exit_to_app_rounded,
                    onTap: () {
                      _authStore.logout(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
