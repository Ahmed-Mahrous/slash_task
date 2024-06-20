import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/slash_home_cubit.dart';

import '../../../../core/utlis/app_icons.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: state,
          onTap: (int index) {
            context.read<HomeCubit>().setTab(index);
          },
          items: [
            BottomNavigationBarItem(
                icon: AppIcons.unselectedHome,
                activeIcon: AppIcons.home,
                label: 'Home'),
            BottomNavigationBarItem(
                icon: AppIcons.unseletedFavorites,
                label: 'Favorites',
                activeIcon: AppIcons.favorites),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedMycart,
                label: 'My Cart',
                activeIcon: AppIcons.mycart),
            BottomNavigationBarItem(
                icon: AppIcons.unselectedProfile,
                label: 'Profile',
                activeIcon: AppIcons.profile),
          ],
        );
      },
    );
  }
}
