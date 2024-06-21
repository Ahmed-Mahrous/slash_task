import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 45,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: 'Search here...',
                prefixIcon: AppIcons.search,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.secondary,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
            height: 45,
            width: 47,
            decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(8)),
            child: AppIcons.filter)
      ],
    );
  }
}
