import 'package:flutter/material.dart';
import '../../core/utlis/app_colors.dart';
import '../../core/utlis/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
      scaffoldBackgroundColor: AppColors.ScaffoldBackground,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: AppColors.primary,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          unselectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
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
