import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../utils/constants/spacing_sizes.dart';
import '../../../utils/masks/currency_mask.dart';
import '../../../utils/ui/back_header_widget.dart';
import '../../../utils/ui/button_widget.dart';
import '../../../utils/ui/colors.dart';
import '../../../utils/ui/date_picker.dart';
import '../../../utils/ui/input_dropdown.dart';
import '../../../utils/ui/input_widget.dart';
import '../../../utils/ui/loading.dart';
import '../notifiers/add_stocks_notifier.dart';

class AddStocksPage extends HookWidget {
  var items = <String>['BBAS3.SA', 'CPLE6.SA', 'FBOK34.SA', 'AAPL.US'];
  AddStocksPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final addStocksNotifier = useListenable(AddStocksNotifier());
    final _formKey = useMemoized(() => GlobalKey<ScaffoldState>());
    return Scaffold(
        backgroundColor: ColorConstants.kBackgroundColor,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(SpacingSizes.s24),
            child: Form(
              key: _formKey,
              child: ReactiveFormBuilder(
                form: () => addStocksNotifier.form,
                builder: (context, form, child) => Column(
                  children: [
                    BackHeader(
                      title: 'Ações/Fundos Imobiliários/ETF’s/BDR’s',
                      showIcon: false,
                    ),
                    SizedBox(
                      height: SpacingSizes.s32,
                    ),
                    InputWidget(
                      placeholder: 'Instituição Financeira',
                      inputType: TextInputType.name,
                      formControlName: 'institute',
                      validationsMessages: (control) => {
                        ValidationMessage.required: 'Instituição obrigatória.'
                      },
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    InputDropdown(
                      items: items,
                      controller: addStocksNotifier.controller.value,
                      onChangeText: addStocksNotifier.onChangeText,
                      onSelectItem: addStocksNotifier.onSelectItem,
                      focusNode: addStocksNotifier.focusNode,
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    Row(
                      children: [
                        Flexible(
                            child: InputWidget(
                          placeholder: 'Quantidade',
                          inputType: TextInputType.number,
                          formControlName: 'quantity',
                          validationsMessages: (control) => {
                            ValidationMessage.required:
                                'Quantidade obrigatória.'
                          },
                        )),
                        SizedBox(
                          width: SpacingSizes.s16,
                        ),
                        Flexible(
                            child: InputWidget(
                          placeholder: 'Preço',
                          inputType: TextInputType.number,
                          formControlName: 'price',
                          icon: Icons.attach_money,
                          inputFormatts: currencyFormat,
                          validationsMessages: (control) => {
                            ValidationMessage.required: 'Preço obrigatória.'
                          },
                        )),
                      ],
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    DatePicker(
                      controller: addStocksNotifier.datePickerController.value,
                      placeholder: 'Data de Compra',
                    ),
                    SizedBox(
                      height: SpacingSizes.s16,
                    ),
                    InputWidget(
                      placeholder: 'Taxas',
                      inputType: TextInputType.number,
                      formControlName: 'fees',
                      icon: Icons.attach_money,
                      inputFormatts: currencyFormat,
                      validationsMessages: (control) =>
                          {ValidationMessage.required: 'Taxas obrigatória.'},
                    ),
                    Container(
                      margin: EdgeInsets.only(top: SpacingSizes.s32),
                      child: ValueListenableBuilder(
                        valueListenable: addStocksNotifier.loading,
                        builder: (context, state, ___) => state == true
                            ? LoadingWiget()
                            : ReactiveFormConsumer(
                                builder: (context, form, child) => ButtonWidget(
                                    text: 'Salvar',
                                    onPressed: () {
                                      addStocksNotifier.onSubmit(form.valid,
                                          _formKey.currentContext, form.value);
                                    }),
                              ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )));
  }
}
