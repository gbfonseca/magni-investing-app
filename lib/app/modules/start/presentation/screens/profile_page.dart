import 'package:flutter/material.dart';

import 'widgets/back_header_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [BackHeader(title: 'Meu Perfil')],
            ),
          ),
        ),
      );
}
