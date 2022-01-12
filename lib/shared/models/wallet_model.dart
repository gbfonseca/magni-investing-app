import 'dart:convert';

class WalletModel {
  String id;
  String name;
  String createdAt;
  String updatedAt;
  VariableIncome variableIncome;

  WalletModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.variableIncome,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'variableIncome': variableIncome.toMap(),
      };

  factory WalletModel.fromMap(Map<String, dynamic> map) => WalletModel(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        createdAt: map['createdAt'] ?? '',
        updatedAt: map['updatedAt'] ?? '',
        variableIncome: VariableIncome.fromMap(map['variable_income']),
      );

  String toJson() => json.encode(toMap());

  factory WalletModel.fromJson(String source) =>
      WalletModel.fromMap(json.decode(source));
}

class VariableIncome {
  String id;
  String name;
  String investedValue;
  String currentValue;
  int percentageYield;
  List<Product> products;

  VariableIncome({
    required this.id,
    required this.name,
    required this.investedValue,
    required this.currentValue,
    required this.percentageYield,
    required this.products,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'investedValue': investedValue,
        'currentValue': currentValue,
        'percentageYield': percentageYield,
        'products': products.map((x) => x.toMap()).toList(),
      };

  factory VariableIncome.fromMap(Map<String, dynamic> map) => VariableIncome(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        investedValue: map['investedValue'] ?? '',
        currentValue: map['currentValue'] ?? '',
        percentageYield: map['percentageYield']?.toInt() ?? 0,
        products:
            List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
      );

  String toJson() => json.encode(toMap());

  factory VariableIncome.fromJson(String source) {
    print(source);
    return VariableIncome.fromMap(json.decode(source));
  }
}

class Product {
  String id;
  String name;
  int quantity;
  String price;
  String purchaseDate;
  String fees;

  Product({
    required this.id,
    required this.name,
    required this.quantity,
    required this.price,
    required this.purchaseDate,
    required this.fees,
  });

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'price': price,
        'purchaseDate': purchaseDate,
        'fees': fees,
      };

  factory Product.fromMap(Map<String, dynamic> map) => Product(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        quantity: map['quantity']?.toInt() ?? 0,
        price: map['price'] ?? '',
        purchaseDate: map['purchaseDate'] ?? '',
        fees: map['fees'] ?? '',
      );

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
