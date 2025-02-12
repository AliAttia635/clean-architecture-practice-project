// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture_practice/core/errors/exceptions.dart';
import 'package:clean_architecture_practice/core/params/params.dart';
import 'package:dartz/dartz.dart';

import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/features/user/data/data_sources/user_remote_data_source.dart';
import 'package:clean_architecture_practice/features/user/data/models/user_model.dart';
import 'package:clean_architecture_practice/features/user/domain/repos/user_repo/user_repo.dart';

class UserRepoImpl implements UserRepo {
  UserRemoteDataSource userRemoteDataSource;
  UserRepoImpl({
    required this.userRemoteDataSource,
  });

  @override
  Future<Either<Failure, UserModel>> getUser(
      {required UserParams userParams}) async {
    try {
      final userResult = await userRemoteDataSource.getUser(userParams);
      return Right(userResult);
    } on ServerException catch (e) {
      return Left(Failure(errMessage: e.errorModel.errorMessage));
    }
  }
}
