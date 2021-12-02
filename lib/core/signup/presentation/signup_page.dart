import 'package:flutter/material.dart';

import '../../../shared/widgets/subtitle_widget.dart';
import '../../../shared/widgets/title_widget.dart';
import 'stores/signup_store.dart';
import 'widgets/signupform_widget.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key? key, this.title = 'SignupPage'}) : super(key: key);
  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  final SignupStore store = SignupStore();

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 43, top: 23, right: 43, bottom: 0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TitleWidget(text: 'Cadastre-se,'),
                    Container(
                      width: 223,
                      child: SubTitleWidget(
                          text: 'Para continuar registre-se para ter acesso.'),
                    ),
                    SizedBox(
                      height: 88,
                    ),
                    Expanded(
                      flex: 1,
                      child: SignUpForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
