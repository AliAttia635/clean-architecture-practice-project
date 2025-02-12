import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/core/params/params.dart';
import 'package:clean_architecture_practice/features/user/domain/entities/user_entity.dart';
import 'package:clean_architecture_practice/features/user/domain/repos/user_repo/user_repo.dart';
import 'package:dartz/dartz.dart';

class GetUserUseCase {
  final UserRepo userRepo;

  GetUserUseCase({required this.userRepo});

  Future<Either<Failure, UserEntity>> callGetUser(
      {required UserParams userParams}) {
    return userRepo.getUser(userParams: userParams);
  }
}
