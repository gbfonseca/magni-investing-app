import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'product_model.dart';

class WalletModel {
  String id;
  String name;
  String created_at;
  String updated_at;
  VariableIncome variable_income;

  WalletModel({
    required this.id,
    required this.name,
    required this.created_at,
    required this.updated_at,
    required this.variable_income,
  });

  WalletModel copyWith({
    String? id,
    String? name,
    String? created_at,
    String? updated_at,
    VariableIncome? variable_income,
  }) =>
      WalletModel(
        id: id ?? this.id,
        name: name ?? this.name,
        created_at: created_at ?? this.created_at,
        updated_at: updated_at ?? this.updated_at,
        variable_income: variable_income ?? this.variable_income,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'created_at': created_at,
        'updated_at': updated_at,
        'variable_income': variable_income.toMap(),
      };

  factory WalletModel.fromMap(Map<String, dynamic> map) => WalletModel(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        created_at: map['created_at'] ?? '',
        updated_at: map['updated_at'] ?? '',
        variable_income: VariableIncome.fromMap(map['variable_income']),
      );

  String toJson() => json.encode(toMap());

  factory WalletModel.fromJson(String source) =>
      WalletModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'WalletModel(id: $id, name: $name, created_at: $created_at, updated_at: $updated_at, variable_income: $variable_income)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is WalletModel &&
        other.id == id &&
        other.name == name &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.variable_income == variable_income;
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      created_at.hashCode ^
      updated_at.hashCode ^
      variable_income.hashCode;
}

class VariableIncome {
  String id;
  String name;
  double invested_value;
  double current_value;
  double percentage_yield;
  List<Product> products;

  VariableIncome({
    required this.id,
    required this.name,
    required this.invested_value,
    required this.current_value,
    required this.percentage_yield,
    required this.products,
  });

  VariableIncome copyWith({
    String? id,
    String? name,
    double? invested_value,
    double? current_value,
    double? percentage_yield,
    List<Product>? products,
  }) =>
      VariableIncome(
        id: id ?? this.id,
        name: name ?? this.name,
        invested_value: invested_value ?? this.invested_value,
        current_value: current_value ?? this.current_value,
        percentage_yield: percentage_yield ?? this.percentage_yield,
        products: products ?? this.products,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'invested_value': invested_value,
        'current_value': current_value,
        'percentage_yield': percentage_yield,
        'products': products.map((x) => x.toMap()).toList(),
      };

  factory VariableIncome.fromMap(Map<String, dynamic> map) => VariableIncome(
        id: map['id'] ?? '',
        name: map['name'] ?? '',
        invested_value: map['invested_value']?.toDouble() ?? 0.0,
        current_value: map['current_value'] ?? 0.0,
        percentage_yield: map['percentage_yield']?.toDouble() ?? 0.0,
        products:
            List<Product>.from(map['products']?.map((x) => Product.fromMap(x))),
      );

  String toJson() => json.encode(toMap());

  factory VariableIncome.fromJson(String source) =>
      VariableIncome.fromMap(json.decode(source));

  @override
  String toString() =>
      'VariableIncome(id: $id, name: $name, invested_value: $invested_value, current_value: $current_value, percentage_yield: $percentage_yield, products: $products)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VariableIncome &&
        other.id == id &&
        other.name == name &&
        other.invested_value == invested_value &&
        other.current_value == current_value &&
        other.percentage_yield == percentage_yield &&
        listEquals(other.products, products);
  }

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      invested_value.hashCode ^
      current_value.hashCode ^
      percentage_yield.hashCode ^
      products.hashCode;
}
