// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseModel<T> _$BaseResponseModelFromJson<T>(Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,) =>
    BaseResponseModel<T>(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)?.map(fromJsonT).toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );
