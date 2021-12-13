import '../../../utils/ui/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../providers/auth_store.dart';
import '../../../shared/widgets/back_header_widget.dart';
import '../../../shared/widgets/button_widget.dart';
import '../../../shared/widgets/input_widget.dart';
import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/colors.dart';
import '../stores/edit_profile_store.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthStore>(context);
    final store = EditProfileStore();
    store.form.updateValue({
      'name': authStore.user.name,
      'lastName': authStore.user.lastName,
      'email': authStore.user.email,
    });

    return Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
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
                          Observer(
                              builder: (_) => InputWidget(
                                    placeholder: 'Nome',
                                    inputType: TextInputType.name,
                                    icon: Icons.person_outline,
                                    formControlName: 'name',
                                    validationsMessages: (control) => {
                                      ValidationMessage.required:
                                          'Nome obrigatório.'
                                    },
                                  )),
                          // Text(store.error.email),
                          SizedBox(
                            height: SpacingSizes.s16,
                          ),
                          Observer(
                              builder: (_) => InputWidget(
                                    placeholder: 'Sobrenome',
                                    inputType: TextInputType.name,
                                    icon: Icons.badge_outlined,
                                    formControlName: 'lastName',
                                    validationsMessages: (control) => {
                                      ValidationMessage.required:
                                          'Sobrenome obrigatório.'
                                    },
                                  )),
                          // Text(store.error.email),
                          SizedBox(
                            height: SpacingSizes.s16,
                          ),
                          Observer(
                              builder: (_) => InputWidget(
                                    placeholder: 'E-mail',
                                    inputType: TextInputType.emailAddress,
                                    icon: Icons.mail_outline,
                                    formControlName: 'email',
                                    validationsMessages: (control) => {
                                      ValidationMessage.required:
                                          'E-mail obrigatório.',
                                      ValidationMessage.email:
                                          'Insira um e-mail válido.'
                                    },
                                  )),
                          SizedBox(
                            height: SpacingSizes.s72,
                          ),
                          Observer(
                              builder: (_) => store.loading == true
                                  ? LoadingWiget()
                                  : ReactiveFormConsumer(
                                      builder: (context, form, child) =>
                                          ButtonWidget(
                                              text: 'Salvar',
                                              onPressed: () {
                                                store.onSubmit(form.valid,
                                                    _formKey.currentContext);
                                              }),
                                    )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
