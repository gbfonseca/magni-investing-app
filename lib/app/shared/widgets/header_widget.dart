import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class Header extends StatelessWidget {
  String name;

  Header({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
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
              Text(
                name,
                style: TextStyle(
                    color: ColorConstants.kFontColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
            ),
            radius: 32,
          )
        ],
      );
}
