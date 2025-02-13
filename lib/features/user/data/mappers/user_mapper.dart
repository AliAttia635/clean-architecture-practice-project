// import 'package:clean_architecture_practice/features/user/data/mappers/address_mapper.dart';
// import 'package:clean_architecture_practice/features/user/data/models/user_model.dart';
// import 'package:clean_architecture_practice/features/user/domain/entities/user_entity.dart';

// class UserMapper {
//   static UserEntity toUserEntity(UserModel usermodel) {
//     return UserEntity(
//         name: usermodel.name ?? 'default name',
//         email: usermodel.email ?? 'default name',
//         phone: usermodel.phone ?? 'default name',
//         address: AddressMapper.toEntity(usermodel.address));
//   }

//   // static UserModel fromEntity(UserEntity entity) {
//   //   return UserModel(
//   //     id: 0,
//   //     name: entity.name,
//   //     email: entity.email,
//   //     phone: entity.phone,
//   //     address: AddressMapper.fromEntity(entity.address),
//   //   );
//   // }
// }
