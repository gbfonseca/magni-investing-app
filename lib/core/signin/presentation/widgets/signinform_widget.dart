import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/ui/button_widget.dart';
import '../../../../utils/ui/colors.dart';
import '../../../../utils/ui/input_widget.dart';
import '../../../../utils/ui/loading.dart';
import 'notifiers/signin_form.dart';

class SignInForm extends HookWidget {
  final store = SigninFormNotifier();

  @override
  Widget build(BuildContext context) {
    final store = useListenable<SigninFormNotifier>(SigninFormNotifier());
    final _formKey = useMemoized(() => GlobalKey<ScaffoldState>());

    return Form(
      key: _formKey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ReactiveFormBuilder(
          form: () => store.form,
          builder: (context, form, child) => Column(
            children: [
              InputWidget(
                placeholder: 'E-mail',
                inputType: TextInputType.emailAddress,
                icon: Icons.mail_outline,
                formControlName: 'email',
                validationsMessages: (control) => {
                  ValidationMessage.required: 'E-mail obrigatório.',
                  ValidationMessage.email: 'Insira um e-mail válido.'
                },
              ),
              // Text(store.error.email),
              SizedBox(
                height: 32,
              ),
              InputWidget(
                placeholder: 'Senha',
                obscureText: true,
                icon: Icons.password_outlined,
                formControlName: 'password',
                validationsMessages: (control) =>
                    {ValidationMessage.required: 'Senha obrigatória.'},
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text('Esqueci minha senha',
                      style: TextStyle(
                          color: ColorConstants.kFontColor,
                          fontSize: FontSizeConstants.s12,
                          fontWeight: FontWeight.w500))),
              SizedBox(
                height: 42,
              ),
              ValueListenableBuilder(
                  valueListenable: store.loading,
                  builder: (context, state, _) => state == true
                      ? LoadingWiget()
                      : ReactiveFormConsumer(
                          builder: (context, form, child) => ButtonWidget(
                              text: 'Entrar',
                              onPressed: () {
                                store.onSubmit(form.valid,
                                    _formKey.currentContext, form.value);
                              }),
                        )),

              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup/');
                    },
                    child: RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: ColorConstants.kFontColor,
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
        ),
      ),
    );
  }
}
