import 'package:flutter/material.dart';

import '../../../shared/widgets/subtitle_widget.dart';
import '../../../shared/widgets/title_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import 'widgets/signinform_widget.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key? key, this.title = 'SigninPage'}) : super(key: key);
  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                left: SpacingSizes.s40,
                top: SpacingSizes.s24,
                right: SpacingSizes.s40,
                bottom: 0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TitleWidget(text: 'Bem-vindo,'),
                    Container(
                      width: 223,
                      child: SubTitleWidget(
                          text: 'Para continuar insira suas credenciais.'),
                    ),
                    SizedBox(
                      height: 88,
                    ),
                    Expanded(
                      flex: 1,
                      child: SignInForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
