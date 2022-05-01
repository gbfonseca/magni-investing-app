import 'package:json_annotation/json_annotation.dart';

part 'stock_list_model.g.dart';

@JsonSerializable()
class StockListModel {
  final String id;
  final String code;

  StockListModel({required this.id, required this.code});

  factory StockListModel.fromJson(Map<String, dynamic> json) =>
      _$StockListModelFromJson(json);

  Map<String, dynamic> toJson() => _$StockListModelToJson(this);
}
