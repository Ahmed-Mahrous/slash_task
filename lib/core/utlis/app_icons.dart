import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/core/utlis/app_colors.dart';

class AppIcons {
  static Widget fashion = Image.asset(
    'assets/icons/Shirt.png',
    width: 34,
    height: 34,
  );
  static Widget games = Image.asset(
    'assets/icons/Dice.png',
    width: 34,
    height: 34,
  );
  static Widget books = Image.asset(
    'assets/icons/Book_Blank.png',
    width: 34,
    height: 34,
  );
  static Widget artifacts = Icon(
    Icons.tag_faces_rounded,
    color: Colors.white,
    size: 34,
  );
  static Widget accessories = Image.asset(
    'assets/icons/Glasses.png',
    width: 34,
    height: 34,
  );
  static Widget unseletedFavorites = SvgPicture.asset(
    'assets/icons/heart.svg',
    width: 30,
    height: 30,
    color: AppColors.primary,
  );
  static Widget favoriteIcon = SvgPicture.asset(
    'assets/icons/heart.svg',
    width: 20,
    height: 20,
    color: AppColors.primary,
  );
  static Widget home = SvgPicture.asset(
    'assets/icons/home.svg',
    width: 30,
    height: 30,
    color: AppColors.primary,
  );
  static Widget unselectedMycart = SvgPicture.asset(
    'assets/icons/shopping-cart.svg',
    width: 30,
    height: 30,
    color: AppColors.primary,
  );
  static Widget unselectedProfile = Image.asset(
    'assets/icons/profile-circle.png',
    width: 30,
    height: 30,
    color: AppColors.primary,
  );
  static Widget mycart = Icon(
    Icons.shopping_cart,
    size: 30,
    color: AppColors.primary,
  );
  static Widget unselectedHome = Icon(
    Icons.home_outlined,
    size: 30,
    color: AppColors.primary,
  );
  static Widget seeAll = Icon(
    Icons.arrow_forward_ios,
    size: 16,
    color: AppColors.primary,
  );
  static Widget favorites = Icon(
    Icons.favorite,
    size: 30,
    color: AppColors.primary,
  );

  static Widget profile = Icon(
    Icons.person,
    size: 30,
    color: AppColors.primary,
  );
  static Widget location = SvgPicture.asset(
    'assets/icons/location.svg',
    width: 24,
    height: 24,
    color: AppColors.primary,
  );
  static Widget search = Icon(
    Icons.search,
    size: 25,
    color: AppColors.primary,
  );
  static Widget notification = Image.asset(
    'assets/icons/notification.png',
    width: 30,
    height: 30,
  );
  static Widget filter = Image.asset(
    'assets/icons/filter.png',
    width: 18,
    height: 18,
  );
}
