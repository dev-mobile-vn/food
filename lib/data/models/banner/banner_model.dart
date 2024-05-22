import 'package:json_annotation/json_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable(createToJson: false)
class BannerModel {
  final int id;
  final String url;
  final String image;

  BannerModel(this.id, this.image, this.url);

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}
