import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/home_cubit_states.dart';

import '../cubit/slash_home_cubit.dart';
import 'home_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeCubit, HomeCubitStates>(
        builder: (context, state) {
          switch (context.read<HomeCubit>().currentIndex) {
            case 0:
              return HomeView();
            case 1:
              return Center(child: Text('Favorites'));
            case 2:
              return Center(child: Text('My Cart'));
            case 3:
              return Center(child: Text('Profile'));
            default:
              return HomeView();
          }
        },
      ),
    );
  }
}
