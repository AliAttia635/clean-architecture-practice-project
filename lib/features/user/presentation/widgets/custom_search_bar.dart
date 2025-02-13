import 'package:clean_architecture_practice/features/user/presentation/cubits/user_cubit/user_cubit.dart';
import 'package:clean_architecture_practice/features/user/presentation/widgets/get_user_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

double id = 5;

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: id,
          onChanged: (value) {
            setState(() {
              id = value;
            });
          },
          min: 1,
          max: 10,
          divisions: 9,
          label: "${id.toInt()}",
        ),
        GetUserButton(onPressed: () {
          BlocProvider.of<UserCubit>(context).getUser(id: id.toInt());
        }),
      ],
    );
  }
}
