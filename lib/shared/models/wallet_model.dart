import 'package:json_annotation/json_annotation.dart';

import 'product_model.dart';
part 'wallet_model.g.dart';

@JsonSerializable()
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

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}

@JsonSerializable()
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

  factory VariableIncome.fromJson(Map<String, dynamic> json) =>
      _$VariableIncomeFromJson(json);

  Map<String, dynamic> toJson() => _$VariableIncomeToJson(this);
}
