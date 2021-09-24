import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/widgets/button_widget.dart';
import '../../../../shared/widgets/input_widget.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/sizes.dart';
import 'stores/signinform_store.dart';

class SignInForm extends StatelessWidget {
  final SigninFormStore store = Modular.get();
  Key formKey;
  SignInForm({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) => Form(
      key: formKey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            InputWidget(
              placeholder: 'E-mail',
              inputType: TextInputType.emailAddress,
              icon: Icons.mail_outline,
              controller: store.email,
            ),
            SizedBox(
              height: 32,
            ),
            InputWidget(
              placeholder: 'Senha',
              obscureText: true,
              icon: Icons.password_outlined,
              controller: store.password,
            ),
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
