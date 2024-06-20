import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';
import '../../../../core/utlis/hex_color.dart';

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 124,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: 124,
                    height: 116,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/images/stitch.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: AppColors.ScaffoldBackground,
                        child: AppIcons.favoriteIcon,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                'Product Name',
              ),
              Row(
                children: [
                  Text(
                    'EGP 100',
                  ),
                  Spacer(),
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(11), // Image radius
                      child: Image.asset('assets/images/seller.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: AppColors.primary,
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        )
      ],
    );
  }
}
