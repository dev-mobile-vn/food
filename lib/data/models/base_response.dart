import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class BaseResponse<T> {
  final int? page;
  @JsonKey(name: 'results')
  final List<T>? results;
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @JsonKey(name: 'total_results')
  final int? totalResults;

  BaseResponse({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BaseResponseFromJson(
        json,
        fromJsonT,
      );
}
