import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/app_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Slash.',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppIcons.location,
            const SizedBox(
              width: 8,
            ),
            const Column(
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
            const SizedBox(
              width: 8,
            ),
            const Icon(
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
