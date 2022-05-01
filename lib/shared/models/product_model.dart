import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  String id;
  String name;
  int quantity;
  double total_price;
  double average_price;
  List<Transaction> transactions;

  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.total_price,
    required this.average_price,
    required this.transactions,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'total_price': total_price,
        'average_price': average_price,
        // 'transactions': transactions.map((x) => x.toMap()).toList(),
      };

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@JsonSerializable()
class Transaction {
  String id;
  String name;
  int quantity;
  double price;
  String purchaseDate;
  double fees;
  String type;

  Transaction({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.purchaseDate,
    required this.fees,
    required this.type,
  });

  Transaction copyWith({
    String? id,
    String? name,
    int? quantity,
    double? price,
    String? purchaseDate,
    double? fees,
    String? type,
  }) =>
      Transaction(
        id: id ?? this.id,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        price: price ?? this.price,
        purchaseDate: purchaseDate ?? this.purchaseDate,
        fees: fees ?? this.fees,
        type: type ?? this.type,
      );

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
