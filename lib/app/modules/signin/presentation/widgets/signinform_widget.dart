import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/widgets/button_widget.dart';
import '../../../../shared/widgets/input_widget.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/sizes.dart';
import 'stores/signinform_store.dart';

class SignInForm extends StatefulWidget {
  SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final SigninFormStore store = Modular.get();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Form(
      key: _formKey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Observer(
                builder: (_) => InputWidget(
                    placeholder: 'E-mail',
                    inputType: TextInputType.emailAddress,
                    icon: Icons.mail_outline,
                    onChanged: store.setEmail,
                    error: store.error.email)),
            // Text(store.error.email),
            SizedBox(
              height: 32,
            ),
            Observer(
                builder: (_) => InputWidget(
                      placeholder: 'Senha',
                      obscureText: true,
                      icon: Icons.password_outlined,
                      onChanged: store.setPassword,
                      error: store.error.password,
                    )),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text('Esqueci minha senha',
                    style: TextStyle(
                        color: ColorConstats.kFontColor,
                        fontSize: FontSizeConstants.s12,
                        fontWeight: FontWeight.w500))),
            SizedBox(
              height: 42,
            ),
            ButtonWidget(text: 'Entrar', onPressed: store.onSubmit),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    print('Clicado');
                  },
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: ColorConstats.kFontColor,
                              fontSize: FontSizeConstants.s12),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Não tem uma conta?',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                            text: ' Cadastre-se aqui.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ])),
                ),
              ),
            )
          ],
        ),
      ));
}
