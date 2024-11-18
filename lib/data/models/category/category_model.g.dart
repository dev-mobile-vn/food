// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
      categoryName: json['category_name'] as String,
      restaurantId: (json['restaurant_id'] as num).toInt(),
    );
