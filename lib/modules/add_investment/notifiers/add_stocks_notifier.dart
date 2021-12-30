import 'package:flutter/cupertino.dart';

class AddStocksNotifier extends ChangeNotifier {
  final ValueNotifier<FocusNode> focusNode = ValueNotifier(FocusNode());
  final ValueNotifier<TextEditingController> controller =
      ValueNotifier(TextEditingController());
  onChangeText(String value) {
    print('value');
    focusNode.notifyListeners();
  }

  onSelectItem(String item) {
    controller.value.value = TextEditingValue(text: item);
    controller.notifyListeners();
    focusNode.value.unfocus();
    focusNode.notifyListeners();
  }
}
