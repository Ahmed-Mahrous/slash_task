import 'package:flutter/material.dart';
import 'package:slash_task/core/utlis/media_query_values.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/categories.dart';
import 'package:slash_task/features/slash_home/presentation/widgets/item_card.dart';
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
            Container(
              height: context.height * 0.18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/images/black_friday.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Categories',
            ),
            SizedBox(
              height: 20,
            ),
            Categories(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text('Best Selling'),
                Spacer(),
                Text('See all'),
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
                  return ItemCard();
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Arrival'),
                Spacer(),
                Text('See all'),
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
                  return ItemCard();
                }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recommended for you'),
                Spacer(),
                Text('See all'),
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
                  return ItemCard();
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
