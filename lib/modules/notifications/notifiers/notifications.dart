import 'package:flutter/cupertino.dart';

class NotificationsNotifier extends ChangeNotifier {
  final ValueNotifier<List<Map<String, String>>> notifications = ValueNotifier([
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_1'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_2'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_3'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_4'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_5'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_6'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_7'
    },
    {
      'title': 'Você recebeu proventos!',
      'message': r'R$ 156,25 de BBAS3',
      'id': '1_8'
    }
  ]);

  removeNotification(int index) {
    notifications.value.removeAt(index);
    notifications.notifyListeners();
  }
}
