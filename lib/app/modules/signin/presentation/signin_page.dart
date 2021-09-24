import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widgets/subtitle_widget.dart';
import '../../../shared/widgets/title_widget.dart';
import 'stores/signin_store.dart';
import 'widgets/signinform_widget.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key? key, this.title = 'SigninPage'}) : super(key: key);
  @override
  SigninPageState createState() => SigninPageState();
}

class SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                      child: SignInForm(
                        formKey: _formKey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
