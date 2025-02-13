import 'package:clean_architecture_practice/core/networking/api_constants.dart';
import 'package:clean_architecture_practice/features/user/data/models/sub_models/geo_model.dart';
import 'package:clean_architecture_practice/features/user/domain/entities/sub_entities/address_entity.dart';

class AddressModel extends AddressEntity {
  AddressModel({
    required super.street,
    required super.suite,
    required super.city,
    required super.zipcode,
    required super.geo,
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
