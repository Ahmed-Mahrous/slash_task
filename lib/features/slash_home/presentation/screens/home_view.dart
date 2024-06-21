import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/media_query_values.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/carousel_slider_withdots.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/categories.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/product_card.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/search.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_icons.dart';
import '../../../../core/utlis/hex_color.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Search(),
            SizedBox(
              height: 20,
            ),
            CarouselSliderWithDots(),
            // SizedBox(
            //   height: 10,
            // ),
            Text('Categories',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
            SizedBox(
              height: 20,
            ),
            Categories(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Best Selling',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
                Spacer(),
                Text('See all',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: HexColor('#EEEEEE'),
                      borderRadius: BorderRadius.circular(4)),
                  child: AppIcons.seeAll,
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return productCard();
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Arrival',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
                Spacer(),
                Text('See all',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: HexColor('#EEEEEE'),
                      borderRadius: BorderRadius.circular(4)),
                  child: AppIcons.seeAll,
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return productCard();
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recommended for you',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
                Spacer(),
                Text('See all',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: HexColor('#EEEEEE'),
                      borderRadius: BorderRadius.circular(4)),
                  child: AppIcons.seeAll,
                )
              ],
            ),

            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return productCard();
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Add other sections like New Arrival, Recommended for you in a similar way
          ],
        ),
      ),
    );
  }
}
