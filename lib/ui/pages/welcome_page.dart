import 'package:flutter/material.dart';

import '../components/primary_button_widget.dart';
import '../components/secondary_button_widget.dart';
import '../utils/colors.dart';
import '../utils/spacing_sizes.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/assets/images/welcome/welcome.png'))),
        child: Padding(
          padding: const EdgeInsets.only(
              left: SpacingSizes.s16,
              right: SpacingSizes.s16,
              top: SpacingSizes.s16,
              bottom: SpacingSizes.s32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Center(
                  child: Image.asset(
                'lib/assets/images/Logo/Logo.png',
                width: 300,
                // height: 320,
              )),
              Column(
                children: [
                  PrimaryButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    text: 'Log-in',
                    backgroundColor: ColorConstants.kPrimaryColor,
                    textColor: ColorConstants.kTextColor,
                    width: MediaQuery.of(context).size.width,
                  ),
                  const SizedBox(
                    height: SpacingSizes.s8,
                  ),
                  SecondaryButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/signup');
                    },
                    text: 'Cadastrar-se',
                    backgroundColor: Colors.transparent,
                    textColor: ColorConstants.kTextColor,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              )
            ],
          ),
        ),
      );
}
