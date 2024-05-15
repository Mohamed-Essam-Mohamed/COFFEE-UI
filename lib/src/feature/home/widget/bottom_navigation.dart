import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:flutter/material.dart';

class bottom_navigation extends StatefulWidget {
  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.colorBlack,
      child: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home,
              color: index == 0
                  ? AppColors.colorOrange
                  : AppColors.colorGrey.withOpacity(.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(
              Icons.shopify,
              color: index == 1
                  ? AppColors.colorOrange
                  : AppColors.colorGrey.withOpacity(.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite,
              color: index == 2
                  ? AppColors.colorOrange
                  : AppColors.colorGrey.withOpacity(.6),
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notification_add,
              color: index == 3
                  ? AppColors.colorOrange
                  : AppColors.colorGrey.withOpacity(.6),
            ),
          ),
        ],
      ),
    );
  }
}