import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/slash_home_cubit.dart';
import 'home_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeCubit, int>(
        builder: (context, state) {
          switch (state) {
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
