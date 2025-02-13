// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:clean_architecture_practice/core/params/params.dart';
import 'package:clean_architecture_practice/features/user/domain/entities/user_entity.dart';
import 'package:meta/meta.dart';

import 'package:clean_architecture_practice/features/user/domain/use_cases/get_user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  GetUserUseCase getUserUseCase;
  UserCubit(
    this.getUserUseCase,
  ) : super(UserInitial());

  void getUser({required int id}) async {
    emit(UserLoaing());

    var result =
        await getUserUseCase.callGetUser(userParams: UserParams(id: id));

    result.fold((failure) {
      emit(UserFailed(errMessage: failure.errMessage));
    }, (userEntity) {
      emit(UserSuccess(userEntity: userEntity));
    });
  }
}
