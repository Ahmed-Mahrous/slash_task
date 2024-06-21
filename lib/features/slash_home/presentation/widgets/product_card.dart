import 'package:flutter/material.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String name;
  final String price;
  final String image;
  final String sellerImage;

  const ProductCard(
      {super.key,
      required this.id,
      required this.name,
      required this.price,
      required this.image,
      required this.sellerImage});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
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
                        image: AssetImage(image),
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
              const SizedBox(height: 4),
              Text(name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 16)),
              Row(
                children: [
                  Text(price,
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 16)),
                  const Spacer(),
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(11), // Image radius
                      child: Image.asset(sellerImage, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  CircleAvatar(
                    radius: 11,
                    backgroundColor: AppColors.primary,
                    child: const Center(
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
        const SizedBox(
          width: 15,
        )
      ],
    );
  }
}
