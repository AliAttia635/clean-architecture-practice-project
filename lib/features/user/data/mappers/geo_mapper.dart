import 'package:clean_architecture_practice/features/user/data/models/sub_models/geo_model.dart';
import 'package:clean_architecture_practice/features/user/domain/entities/sub_entities/geo_entity.dart';

class GeoMapper {
  static GeoEntity toEntity(GeoModel model) {
    return GeoEntity(
      lat: model.lat,
      lng: model.lng,
    );
  }

  // static GeoModel fromEntity(GeoEntity entity) {
  //   return GeoModel(
  //     lat: entity.lat,
  //     lng: entity.lng,
  //   );
  // }
}
