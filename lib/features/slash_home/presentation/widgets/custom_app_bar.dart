import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/app_icons.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Slash.',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcons.location,
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nasr City',
                    style:
                        TextStyle(fontWeight: FontWeight.w400, fontSize: 14)),
                Text('Cairo',
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 20,
            )
          ],
        ),
        AppIcons.notification
      ],
    );
  }
}
