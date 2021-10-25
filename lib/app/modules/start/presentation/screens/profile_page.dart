import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';
import 'widgets/back_header_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                BackHeader(title: 'Meu Perfil'),
                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: CircleAvatar(
                    backgroundColor: ColorConstants.kPrimaryColor,
                    radius: 56,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: ColorConstants.kPrimaryColor, width: 4)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 36, bottom: 72),
                  child: Text('Gabriel Fonseca',
                      style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24)),
                )
              ],
            ),
          ),
        ),
      );
}
