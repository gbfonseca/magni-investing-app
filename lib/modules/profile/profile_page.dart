import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_store.dart';
import '../../shared/widgets/back_header_widget.dart';
import '../../shared/widgets/option_widget.dart';
import '../../utils/colors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authStore = Provider.of<AuthStore>(context);
    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              BackHeader(
                title: 'Meu Perfil',
                showIcon: true,
              ),
              Container(
                margin: EdgeInsets.only(top: 64),
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
                margin: EdgeInsets.only(top: 36, bottom: 72),
                child: Text(
                    "${_authStore.user.name} ${_authStore.user.lastName}",
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
    );
  }
}
