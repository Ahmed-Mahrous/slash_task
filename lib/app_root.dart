import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/slash_home_cubit.dart';
import 'package:slash_task/features/slash_home/presentation/screens/home_screen.dart';
import 'config/themes/app_theme.dart';
import 'core/utlis/app_strings.dart';

class SlashApp extends StatelessWidget {
  const SlashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: HomeScreen(),
      ),
    );
  }
}
