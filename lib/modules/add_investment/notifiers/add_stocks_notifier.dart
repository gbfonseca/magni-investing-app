import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

class AddStocksNotifier extends ChangeNotifier {
  final ValueNotifier<FocusNode> focusNode = ValueNotifier(FocusNode());
  final ValueNotifier<TextEditingController> controller =
      ValueNotifier(TextEditingController());

  final ValueNotifier<TextEditingController> datePickerController =
      ValueNotifier(TextEditingController());

  final ValueNotifier<bool> loading = ValueNotifier(false);

  FormGroup form = FormGroup({
    'institute': FormControl(value: ''),
    'quantity': FormControl(value: ''),
    'price': FormControl(value: ''),
    'fees': FormControl(value: ''),
  });

  onChangeText(String value) {
    focusNode.notifyListeners();
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
