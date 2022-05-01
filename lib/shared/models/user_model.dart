import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  final String id;
  final String name;
  final String lastName;
  final String email;
  final String created_at;
  final String updated_at;

  UserModel(
      {required this.id,
      required this.name,
      required this.lastName,
      required this.email,
      required this.created_at,
      required this.updated_at});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
