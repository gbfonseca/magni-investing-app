import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../shared/models/stock_list_model.dart';
import '../../../utils/services/dio_client.dart';
import '../../../utils/services/stocks_service.dart';

class AddStocksNotifier extends ChangeNotifier {
  final ValueNotifier<FocusNode> focusNode = ValueNotifier(FocusNode());
  final ValueNotifier<TextEditingController> controller =
      ValueNotifier(TextEditingController());

  final ValueNotifier<TextEditingController> datePickerController =
      ValueNotifier(TextEditingController());

  final ValueNotifier<bool> loading = ValueNotifier(false);

  ValueNotifier<List<StockListModel>> stocksList = ValueNotifier([]);
  ValueNotifier<List<StockListModel>> stocksListFull = ValueNotifier([]);

  FormGroup form = FormGroup({
    'institute': FormControl(value: ''),
    'quantity': FormControl(value: ''),
    'price': FormControl(value: ''),
    'fees': FormControl(value: ''),
  });

  getListStocks() async {
    final stocksService = StocksService(dio);
    final response = await stocksService.getStocks();
    stocksList.value = response;
    stocksListFull.value = response;
    stocksList.notifyListeners();
    stocksListFull.notifyListeners();
  }

  onChangeText(String value) {
    stocksList.value = stocksListFull.value
        .where((stock) => stock.code.startsWith(value.toUpperCase()))
        .toList();
    focusNode.notifyListeners();
    stocksList.notifyListeners();
  }

  onSelectItem(String item) {
    controller.value.value = TextEditingValue(text: item);
    focusNode.value.unfocus();
    controller.notifyListeners();
    focusNode.notifyListeners();
  }

  onSubmit(validForm, context, formValue) {
    if (validForm) {
      final data = {
        'institute': formValue['institute'],
        'code': controller.value.value.text,
        'quantity': formValue['quantity'],
        'price': formValue['price'],
        'taxes': formValue['fees'],
        'buy_date': datePickerController.value.value.text
      };
      print(data);
    }
  }
}
