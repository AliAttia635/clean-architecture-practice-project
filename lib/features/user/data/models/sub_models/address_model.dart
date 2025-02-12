import 'package:clean_architecture_practice/core/networking/api_constants.dart';
import 'package:clean_architecture_practice/features/user/data/models/sub_models/geo_model.dart';

class AddressModel {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoModel geo;

  AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      street: json[ApiKey.street],
      suite: json[ApiKey.suite],
      city: json[ApiKey.city],
      zipcode: json[ApiKey.zipcode],
      geo: GeoModel.fromJson(json[ApiKey.geo]),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      ApiKey.street: street,
      ApiKey.suite: suite,
      ApiKey.city: city,
      ApiKey.zipcode: zipcode,
      ApiKey.geo: geo,
    };
  }
}
