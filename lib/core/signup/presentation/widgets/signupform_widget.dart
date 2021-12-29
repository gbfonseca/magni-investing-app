import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../../shared/widgets/button_widget.dart';
import '../../../../shared/widgets/input_widget.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/ui/colors.dart';
import '../../../../utils/ui/loading.dart';
import 'notifiers/signup_form.dart';

class SignUpForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final store = useListenable<SignUpFormNotifier>(SignUpFormNotifier());
    final _formKey = useMemoized(() => GlobalKey<ScaffoldState>());

    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child: ReactiveFormBuilder(
              form: () => store.form,
              builder: (context, form, child) => Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  InputWidget(
                    placeholder: 'Nome',
                    inputType: TextInputType.name,
                    icon: Icons.person_outline,
                    formControlName: 'name',
                    validationsMessages: (control) =>
                        {ValidationMessage.required: 'Nome obrigatório.'},
                  ),
                  // Text(store.error.email),
                  SizedBox(
                    height: 16,
                  ),
                  InputWidget(
                    placeholder: 'Sobrenome',
                    inputType: TextInputType.name,
                    icon: Icons.badge_outlined,
                    formControlName: 'lastName',
                    validationsMessages: (control) =>
                        {ValidationMessage.required: 'Sobrenome obrigatório.'},
                  ),
                  // Text(store.error.email),
                  SizedBox(
                    height: 16,
                  ),
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
                    height: 16,
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
                  InputWidget(
                    placeholder: 'Confirmar Senha',
                    obscureText: true,
                    icon: Icons.password_outlined,
                    formControlName: 'confirmPassword',
                    validationsMessages: (control) => {
                      ValidationMessage.required: 'Confirmar senha obrigatório.'
                    },
                  ),

                  SizedBox(
                    height: 24,
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
}
