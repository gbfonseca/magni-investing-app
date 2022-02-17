// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/auth_provider.dart';
import '../../utils/ui/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Consumer<AuthProviderNotifier>(builder: (context, _authProvider, child) {
        _authProvider.getUser();
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bem-vindo,',
                    style: TextStyle(
                        color: ColorConstants.kFontColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  ValueListenableBuilder(
                      valueListenable: _authProvider.user,
                      builder: (context, _, __) => Text(
                            '${_authProvider.user.value.name} ${_authProvider.user.value.lastName}',
                            style: TextStyle(
                                color: ColorConstants.kFontColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ))
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed('/start/profile/');
                },
                child: Container(
                  child: Hero(
                    tag: 'avatar',
                    child: CircleAvatar(
                      backgroundColor: ColorConstants.kPrimaryColor,
                      radius: 32,
                      backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: ColorConstants.kPrimaryColor, width: 3)),
                ),
              )
            ],
          ),
        );
      });
}
