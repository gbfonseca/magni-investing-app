import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import '../components/input_widget.dart';
import '../components/primary_button_widget.dart';
import '../components/secondary_button_widget.dart';
import '../components/social_button_widget.dart';
import '../utils/colors.dart';
import '../utils/radius_size.dart';
import '../utils/spacing_sizes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: ColorConstants.kBackgroundColor),
          child: Padding(
              padding: EdgeInsets.all(SpacingSizes.s16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                                color: ColorConstants.kGreyColor950,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(RadiusSize.s16)),
                                border: Border.all(
                                    color: ColorConstants.kGreyColor800,
                                    width: 0.5)),
                            child: Icon(Icons.chevron_left),
                          ),
                        ),
                        SizedBox(
                          width: SpacingSizes.s16,
                        ),
                        Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 24,
                              color: ColorConstants.kTextColor,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                    SizedBox(
                      height: SpacingSizes.s48,
                    ),
                    Text(
                      'Entre com uma das seguintes opções.',
                      style: TextStyle(color: Color(0xff515151), fontSize: 16),
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: SocialButton(
                            icon: FontAwesome5.google,
                            iconSize: 18,
                          ),
                        ),
                        SizedBox(
                          width: SpacingSizes.s16,
                        ),
                        Expanded(
                          flex: 1,
                          child: SocialButton(
                            icon: Icons.apple,
                            iconSize: 28,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SpacingSizes.s48,
                    ),
                    InputWidget(
                      placeholder: 'Email',
                      icon: Icons.email_outlined,
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: SpacingSizes.s32,
                    ),
                    InputWidget(
                      placeholder: 'Senha',
                      icon: Icons.lock_outline,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: SpacingSizes.s32,
                    ),
                    PrimaryButton(
                        onPressed: () {
                          print('login');
                        },
                        text: 'Entrar',
                        backgroundColor: ColorConstants.kPrimaryColor,
                        textColor: ColorConstants.kButtonTextColor,
                        width: MediaQuery.of(context).size.width),
                    SizedBox(
                      height: SpacingSizes.s32,
                    ),
                    SecondaryButton(
                        onPressed: () {},
                        textColor: ColorConstants.kTextColor,
                        text: 'Não tem uma conta? Cadastre-se aqui.',
                        width: MediaQuery.of(context).size.width)
                  ],
                ),
              )),
        )),
      );
}
