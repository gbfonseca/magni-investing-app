class StockListModel {
  final String id;
  final String code;

  StockListModel({required this.id, required this.code});

  get() => {
        'id': id,
        'code': code,
      };

  static StockListModel fromJson(Map map) => StockListModel(
        id: map['id'],
        code: map['code'],
      );
}
