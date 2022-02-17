import 'dart:convert';

import 'package:flutter/foundation.dart';

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

  Product copyWith({
    String? id,
    String? name,
    int? quantity,
    double? total_price,
    double? average_price,
    List<Transaction>? transactions,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        quantity: quantity ?? this.quantity,
        total_price: total_price ?? this.total_price,
        average_price: average_price ?? this.average_price,
        transactions: transactions ?? this.transactions,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'total_price': total_price,
        'average_price': average_price,
        'transactions': transactions.map((x) => x.toMap()).toList(),
      };

  factory Product.fromMap(Map<String, dynamic> map) => Product(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        quantity: map['quantity']?.toInt() ?? 0,
        total_price: map['total_price']?.toDouble() ?? 0.0,
        average_price: map['average_price']?.toDouble() ?? 0.0,
        transactions: List<Transaction>.from(
            map['transactions']?.map((x) => Transaction.fromMap(x))),
      );

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() =>
      'Product(id: $id, name: $name, quantity: $quantity, total_price: $total_price, average_price: $average_price, transactions: $transactions)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.quantity == quantity &&
        other.total_price == total_price &&
        other.average_price == average_price &&
        listEquals(other.transactions, transactions);
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      quantity.hashCode ^
      total_price.hashCode ^
      average_price.hashCode ^
      transactions.hashCode;
}

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

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'price': price,
        'purchaseDate': purchaseDate,
        'fees': fees,
        'type': type,
      };

  factory Transaction.fromMap(Map<String, dynamic> map) => Transaction(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        quantity: map['quantity']?.toInt() ?? 0,
        price: map['price']?.toDouble() ?? 0.0,
        purchaseDate: map['purchaseDate'] ?? '',
        fees: map['fees']?.toDouble() ?? 0.0,
        type: map['type'] ?? '',
      );

  String toJson() => json.encode(toMap());

  factory Transaction.fromJson(String source) =>
      Transaction.fromMap(json.decode(source));

  @override
  String toString() =>
      'Transaction(id: $id, name: $name, quantity: $quantity, price: $price, purchaseDate: $purchaseDate, fees: $fees, type: $type)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Transaction &&
        other.id == id &&
        other.name == name &&
        other.quantity == quantity &&
        other.price == price &&
        other.purchaseDate == purchaseDate &&
        other.fees == fees &&
        other.type == type;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      quantity.hashCode ^
      price.hashCode ^
      purchaseDate.hashCode ^
      fees.hashCode ^
      type.hashCode;
}
