import 'package:clean_architecture_practice/core/networking/api_constants.dart';
import 'package:clean_architecture_practice/features/user/data/models/sub_models/address_model.dart';
import 'package:clean_architecture_practice/features/user/data/models/sub_models/company_model.dart';

class UserModel {
  final int id;
  final String username;
  final String website;
  final CompanyModel company;
  final String name;
  final String phone;
  final String email;
  final AddressModel address;
  UserModel({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
    required this.username,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json[ApiKey.id],
      name: json[ApiKey.name],
      phone: json[ApiKey.phone],
      email: json[ApiKey.email],
      username: json[ApiKey.username],
      website: json[ApiKey.website],
      address: AddressModel.fromJson(json[ApiKey.address]),
      company: CompanyModel.fromJson(json[ApiKey.company]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      ApiKey.id: id,
      ApiKey.name: name,
      ApiKey.email: email,
      ApiKey.phone: phone,
      ApiKey.username: username,
      ApiKey.website: website,
      ApiKey.company: company,
      ApiKey.address: address,
    };
  }
}
