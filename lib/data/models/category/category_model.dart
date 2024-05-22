import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable(createToJson: false)
class CategoryModel {
  final int id;
  @JsonKey(name: 'category_name')
  final String categoryName;
  final String image;

  @JsonKey(name: 'restaurant_id')
  final int restaurantId;

  CategoryModel(
      {required this.id,
      required this.image,
      required this.categoryName,
      required this.restaurantId});

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
