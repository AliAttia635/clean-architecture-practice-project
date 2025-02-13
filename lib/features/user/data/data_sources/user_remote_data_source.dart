import 'package:clean_architecture_practice/core/networking/api_constants.dart';
import 'package:clean_architecture_practice/core/networking/api_service.dart';
import 'package:clean_architecture_practice/core/params/params.dart';
import 'package:clean_architecture_practice/features/user/data/models/user_model.dart';

class UserRemoteDataSource {
  final ApiService apiService;

  UserRemoteDataSource({
    required this.apiService,
  });
  Future<UserModel> getUser(UserParams userParams) async {
    final response =
        await apiService.get(endPoint: "${ApiConstants.user}${userParams.id}");
    return UserModel.fromJson(response);
  }
}
