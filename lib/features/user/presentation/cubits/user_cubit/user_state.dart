// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class UserLoaing extends UserState {}

class UserSuccess extends UserState {
  final UserEntity userEntity;
  UserSuccess({
    required this.userEntity,
  });
}

class UserFailed extends UserState {
  final String errMessage;
  UserFailed({
    required this.errMessage,
  });
}
