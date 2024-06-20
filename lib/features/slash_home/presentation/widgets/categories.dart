import 'package:flutter/material.dart';

import '../../../../core/utlis/app_icons.dart';
import '../../../../core/utlis/hex_color.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#292929'),
              child: AppIcons.fashion,
            ),
            SizedBox(height: 4),
            Text(
              'Fashion',
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#292929'),
              child: AppIcons.games,
            ),
            SizedBox(height: 4),
            Text(
              'Games',
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#292929'),
              child: AppIcons.accessories,
            ),
            SizedBox(height: 4),
            Text(
              'Accessories',
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#292929'),
              child: AppIcons.books,
            ),
            SizedBox(height: 4),
            Text(
              'Books',
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: HexColor('#292929'),
              child: AppIcons.artifacts,
            ),
            SizedBox(height: 4),
            Text(
              'Artifacts',
            ),
          ],
        )
      ]),
    );
  }
}
