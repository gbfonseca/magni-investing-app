import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:reactive_forms/reactive_forms.dart';

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
  final SignUpFormStore store = SignUpFormStore();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: ReactiveForm(
            formGroup: store.form,
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Observer(
                    builder: (_) => InputWidget(
                          placeholder: 'Nome',
                          inputType: TextInputType.name,
                          icon: Icons.person_outline,
                          formControlName: 'name',
                          validationsMessages: (control) =>
                              {ValidationMessage.required: 'Nome obrigatório.'},
                        )),
                // Text(store.error.email),
                SizedBox(
                  height: 16,
                ),
                Observer(
                    builder: (_) => InputWidget(
                          placeholder: 'Sobrenome',
                          inputType: TextInputType.name,
                          icon: Icons.badge_outlined,
                          formControlName: 'lastName',
                          validationsMessages: (control) => {
                            ValidationMessage.required: 'Sobrenome obrigatório.'
                          },
                        )),
                // Text(store.error.email),
                SizedBox(
                  height: 16,
                ),
                Observer(
                    builder: (_) => InputWidget(
                          placeholder: 'E-mail',
                          inputType: TextInputType.emailAddress,
                          icon: Icons.mail_outline,
                          formControlName: 'email',
                          validationsMessages: (control) => {
                            ValidationMessage.required: 'E-mail obrigatório.',
                            ValidationMessage.email: 'Insira um e-mail válido.'
                          },
                        )),
                // Text(store.error.email),
                SizedBox(
                  height: 16,
                ),
                Observer(
                    builder: (_) => InputWidget(
                          placeholder: 'Senha',
                          obscureText: true,
                          icon: Icons.password_outlined,
                          formControlName: 'password',
                          validationsMessages: (control) => {
                            ValidationMessage.required: 'Senha obrigatória.'
                          },
                        )),
                SizedBox(
                  height: 16,
                ),
                Observer(
                    builder: (_) => InputWidget(
                          placeholder: 'Confirmar Senha',
                          obscureText: true,
                          icon: Icons.password_outlined,
                          formControlName: 'confirmPassword',
                          validationsMessages: (control) => {
                            ValidationMessage.required:
                                'Confirmar senha obrigatório.'
                          },
                        )),

                SizedBox(
                  height: 24,
                ),
                ReactiveFormConsumer(
                  builder: (context, form, child) => ButtonWidget(
                      text: 'Salvar',
                      onPressed: () {
                        store.onSubmit(form.valid, context);
                      }),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/signin/');
                    },
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: ColorConstants.kFontColor,
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
                )
              ],
            ),
          ),
        ),
      ));
}
