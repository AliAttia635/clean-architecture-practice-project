import 'package:clean_architecture_practice/core/errors/failure.dart';
import 'package:clean_architecture_practice/core/params/params.dart';
import 'package:clean_architecture_practice/features/user/data/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepo {
  Future<Either<Failure, UserModel>> getUser({required UserParams userParams});
}
