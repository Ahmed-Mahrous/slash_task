import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/hex_color.dart';
import '../../core/utlis/app_colors.dart';
import '../../core/utlis/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
      scaffoldBackgroundColor: AppColors.ScaffoldBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.primary,
          showUnselectedLabels: true,
          unselectedIconTheme: IconThemeData(color: AppColors.primary),
          selectedIconTheme: IconThemeData(color: AppColors.primary)),
      iconTheme: IconThemeData(color: AppColors.primary),
      primaryColor: AppColors.primary,
      brightness: Brightness.light,
      fontFamily: AppStrings.fontFamily,
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.primary),
      ));
}
