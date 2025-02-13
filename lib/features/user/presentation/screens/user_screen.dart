import 'package:clean_architecture_practice/features/user/presentation/cubits/user_cubit/user_cubit.dart';
import 'package:clean_architecture_practice/features/user/presentation/widgets/custom_search_bar.dart';
import 'package:clean_architecture_practice/features/user/presentation/widgets/landing_widget.dart';
import 'package:clean_architecture_practice/features/user/presentation/widgets/user_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: state is UserSuccess
              ? ListView(
                  children: [
                    const LandingWidget(),
                    UserData(user: state.userEntity),
                    const CustomSearchBar(),
                  ],
                )
              : state is UserFailed
                  ? Text(state.errMessage)
                  : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
