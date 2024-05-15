import 'package:coffe_ui/src/data/resorces_list.dart';
import 'package:coffe_ui/src/feature/home/widget/container_textform.dart';
import 'package:coffe_ui/src/feature/home/widget/listview_show_coffees.dart';
import 'package:coffe_ui/src/feature/home/widget/listview_show_type_coffee.dart';
import 'package:coffe_ui/src/feature/home/widget/special_cart_item.dart';
import 'package:coffe_ui/src/helper/custom_gap.dart';
import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:coffe_ui/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

import 'widget/bottom_navigation.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBlack,
      bottomNavigationBar: BottomNavigation(),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customDrawer(),
            verticalGap(20),
            const Text(
              "Find the best",
              style: AppTextStyle.textStyle30,
            ),
            verticalGap(5),
            Text(
              "Coffee for you",
              style: AppTextStyle.textStyle30.copyWith(
                letterSpacing: 2,
              ),
            ),
            verticalGap(25),
            const ContainerTextForm(),
            verticalGap(25),
            const ListviewShowTypeCoffee(),
            verticalGap(20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListViewShowCoffee(),
                    verticalGap(20),
                    const Text(
                      "Special for you",
                      style: AppTextStyle.textStyle18,
                    ),
                    verticalGap(20),
                    SpecialCartItem(asset: images[5]),
                    verticalGap(20),
                    SpecialCartItem(asset: images[6]),
                    verticalGap(20),
                    SpecialCartItem(asset: images[7]),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customDrawer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          elevation: 20,
          color: Colors.white.withOpacity(.1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                circleRow(),
                circleRow(),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const FlutterLogo(
              size: 35,
            ),
          ),
        ),
      ],
    );
  }

  Widget circleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleIcon(),
        circleIcon(),
      ],
    );
  }

  Widget circleIcon() {
    return Icon(
      Icons.circle,
      color: Colors.white.withOpacity(.5),
      size: 10,
    );
  }
}
