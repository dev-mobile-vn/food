import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable(createToJson: false)
class AddressModel {
  final num id;
  final String address;

  AddressModel({
    required this.id,
    required this.address,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

}
