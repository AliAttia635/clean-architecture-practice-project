import 'package:clean_architecture_practice/core/networking/api_service.dart';
import 'package:clean_architecture_practice/features/user/data/data_sources/user_remote_data_source.dart';
import 'package:clean_architecture_practice/features/user/data/repos/user_repo_impl/user_repo_impl.dart';
import 'package:clean_architecture_practice/features/user/domain/use_cases/get_user.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(),
  );
  getIt.registerSingleton<UserRepoImpl>(
    UserRepoImpl(
      userRemoteDataSource: UserRemoteDataSource(
        apiService: getIt.get<ApiService>(),
      ),
    ),
  );

  getIt.registerSingleton<GetUserUseCase>(
      GetUserUseCase(userRepo: getIt.get<UserRepoImpl>()));
}
