import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/ui/back_header_widget.dart';
import '../../../utils/ui/button_widget.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/input_widget.dart';
import '../../../utils/ui/loading.dart';
import '../notifiers/create_wallet_notifier.dart';

class CreateWalletPage extends HookWidget {
  const CreateWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = useListenable<CreateWalletNotifier>(CreateWalletNotifier());
    final _formKey = useMemoized(() => GlobalKey<ScaffoldState>());

    return Scaffold(
      backgroundColor: ColorConstants.kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(SpacingSizes.s24),
            child: Column(
              children: [
                BackHeader(title: 'Adicionar Carteira'),
                Container(
                  margin: EdgeInsets.only(top: SpacingSizes.s40),
                  child: Form(
                      key: _formKey,
                      child: ReactiveFormBuilder(
                        form: () => store.form,
                        builder: (context, form, child) => Container(
                          height: MediaQuery.of(context).size.height - 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InputWidget(
                                placeholder: 'Nome da carteira',
                                formControlName: 'name',
                                icon: FontAwesome5.wallet,
                                validationsMessages: (control) => {
                                  ValidationMessage.required:
                                      'Nome da carteira obrigatória.',
                                },
                              ),
                              ValueListenableBuilder(
                                  valueListenable: store.loading,
                                  builder: (context, state, _) => state == true
                                      ? LoadingWiget()
                                      : ReactiveFormConsumer(
                                          builder: (context, form, child) =>
                                              ButtonWidget(
                                                  text: 'Salvar',
                                                  onPressed: () {
                                                    store.onSubmit(
                                                        form.valid,
                                                        _formKey.currentContext,
                                                        form.value);
                                                  }),
                                        ))
                            ],
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
