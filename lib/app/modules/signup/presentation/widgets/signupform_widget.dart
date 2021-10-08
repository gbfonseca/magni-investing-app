import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/widgets/button_widget.dart';
import '../../../../shared/widgets/input_widget.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/sizes.dart';
import 'stores/signupform_store.dart';

class SignUpForm extends StatefulWidget {
  SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final SignUpFormStore store = Modular.get();

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
                    placeholder: 'Nome',
                    inputType: TextInputType.name,
                    icon: Icons.person_outline,
                    onChanged: store.setName,
                    error: store.error.name)),
            // Text(store.error.email),
            SizedBox(
              height: 16,
            ),
            Observer(
                builder: (_) => InputWidget(
                    placeholder: 'Sobrenome',
                    inputType: TextInputType.name,
                    icon: Icons.badge_outlined,
                    onChanged: store.setLastName,
                    error: store.error.lastName)),
            // Text(store.error.email),
            SizedBox(
              height: 16,
            ),
            Observer(
                builder: (_) => InputWidget(
                    placeholder: 'E-mail',
                    inputType: TextInputType.emailAddress,
                    icon: Icons.mail_outline,
                    onChanged: store.setEmail,
                    error: store.error.email)),
            // Text(store.error.email),
            SizedBox(
              height: 16,
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
              height: 24,
            ),
            ButtonWidget(text: 'Salvar', onPressed: store.onSubmit),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/signin/');
                  },
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: ColorConstats.kFontColor,
                              fontSize: FontSizeConstants.s12),
                          children: <TextSpan>[
                        TextSpan(
                          text: 'Já tem uma conta ? ',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                            text: 'Acesse-a aqui.',
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
