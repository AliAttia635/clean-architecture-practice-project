import 'package:clean_architecture_practice/features/user/data/mappers/geo_mapper.dart';
import 'package:clean_architecture_practice/features/user/data/models/sub_models/address_model.dart';
import 'package:clean_architecture_practice/features/user/domain/entities/sub_entities/address_entity.dart';

class AddressMapper {
  static AddressEntity toEntity(AddressModel model) {
    return AddressEntity(
      street: model.street,
      suite: model.suite,
      city: model.city,
      zipcode: model.zipcode,
      geo: GeoMapper.toEntity(model.geo),
    );
  }

  // static AddressModel fromEntity(AddressEntity entity) {
  //   return AddressModel(
  //     street: entity.street,
  //     suite: entity.suite,
  //     city: entity.city,
  //     zipcode: entity.zipcode,
  //     geo: GeoMapper.fromEntity(entity.geo),
  //   );
  // }
}
