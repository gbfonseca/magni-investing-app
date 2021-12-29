import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../providers/auth_provider.dart';
import '../../../shared/widgets/back_header_widget.dart';
import '../../../shared/widgets/button_widget.dart';
import '../../../shared/widgets/input_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/loading.dart';
import '../notifiers/edit_profile.dart';

class EditProfilePage extends HookWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final store = useListenable(EditProfileNotifier());

    return Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: Consumer<AuthProviderNotifier>(
            builder: (context, authStore, child) {
          store.form.updateValue({
            'name': authStore.user.value.name,
            'lastName': authStore.user.value.lastName,
            'email': authStore.user.value.email,
          });
          return SafeArea(
              child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.all(SpacingSizes.s24),
                child: Column(
                  children: [
                    BackHeader(title: 'Editar Perfil'),
                    Container(
                      margin: EdgeInsets.only(top: SpacingSizes.s64),
                      child: Hero(
                        tag: 'avatar',
                        child: CircleAvatar(
                          backgroundColor: ColorConstants.kPrimaryColor,
                          radius: 56,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: ColorConstants.kPrimaryColor, width: 4)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: SpacingSizes.s32),
                      child: ReactiveForm(
                        formGroup: store.form,
                        child: Column(
                          children: [
                            InputWidget(
                              placeholder: 'Nome',
                              inputType: TextInputType.name,
                              icon: Icons.person_outline,
                              formControlName: 'name',
                              validationsMessages: (control) => {
                                ValidationMessage.required: 'Nome obrigatório.'
                              },
                            ),
                            // Text(store.error.email),
                            SizedBox(
                              height: SpacingSizes.s16,
                            ),
                            InputWidget(
                              placeholder: 'Sobrenome',
                              inputType: TextInputType.name,
                              icon: Icons.badge_outlined,
                              formControlName: 'lastName',
                              validationsMessages: (control) => {
                                ValidationMessage.required:
                                    'Sobrenome obrigatório.'
                              },
                            ),
                            // Text(store.error.email),
                            SizedBox(
                              height: SpacingSizes.s16,
                            ),
                            InputWidget(
                              placeholder: 'E-mail',
                              inputType: TextInputType.emailAddress,
                              icon: Icons.mail_outline,
                              formControlName: 'email',
                              readOnly: true,
                              validationsMessages: (control) => {
                                ValidationMessage.required:
                                    'E-mail obrigatório.',
                                ValidationMessage.email:
                                    'Insira um e-mail válido.'
                              },
                            ),
                            SizedBox(
                              height: SpacingSizes.s72,
                            ),
                            ValueListenableBuilder(
                              valueListenable: store.loading,
                              builder: (context, state, ___) => state == true
                                  ? LoadingWiget()
                                  : ReactiveFormConsumer(
                                      builder: (context, form, child) =>
                                          ButtonWidget(
                                              text: 'Salvar',
                                              onPressed: () {
                                                store.onSubmit(form.valid,
                                                    _formKey.currentContext);
                                              }),
                                    ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ));
        }));
  }
}
