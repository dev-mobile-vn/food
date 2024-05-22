import 'package:json_annotation/json_annotation.dart';

part 'base_response_model.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class BaseResponseModel<T> {
  final int? page;
  @JsonKey(name: 'results')
  final List<T>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  BaseResponseModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory BaseResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseModelFromJson(
        json,
        fromJsonT,
      );
}
