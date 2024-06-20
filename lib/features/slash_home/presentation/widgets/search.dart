import 'package:flutter/material.dart';

import '../../../../core/utlis/app_icons.dart';
import '../../../../core/utlis/hex_color.dart';

class Search extends StatelessWidget {
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
                fillColor: HexColor('#EEEEEE'),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
            height: 45,
            width: 47,
            decoration: BoxDecoration(
                color: HexColor('#EEEEEE'),
                borderRadius: BorderRadius.circular(8)),
            child: AppIcons.filter)
      ],
    );
  }
}
