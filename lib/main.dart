import 'package:clean_architecture_practice/core/di/server_locator.dart';
import 'package:clean_architecture_practice/features/user/domain/use_cases/get_user.dart';
import 'package:clean_architecture_practice/features/user/presentation/cubits/user_cubit/user_cubit.dart';
import 'package:clean_architecture_practice/features/user/presentation/screens/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) =>
            UserCubit(getIt.get<GetUserUseCase>())..getUser(id: 1),
        child: const UserScreen(),
      ),
    );
  }
}
