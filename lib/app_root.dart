import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/features/slash_home/presentation/cubit/slash_home_cubit.dart';
import 'package:slash_task/features/slash_home/presentation/screens/home_screen.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/bottom_nav_bar.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/custom_app_bar.dart';
import 'config/themes/app_theme.dart';
import 'core/utlis/app_strings.dart';

class SlashApp extends StatefulWidget {
  const SlashApp({super.key});

  @override
  State<SlashApp> createState() => _SlashAppState();
}

class _SlashAppState extends State<SlashApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppStrings.appName,
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: BlocProvider(
          create: (context) => HomeCubit()..fetchProducts(),
          child: const Scaffold(
              bottomNavigationBar: BottomNavBar(),
              body: SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 24, right: 24, bottom: 24, top: 30),
                  child: Column(
                    children: [
                      CustomAppBar(),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(child: HomeScreen()),
                    ],
                  ),
                ),
              )),
        ));
  }
}
