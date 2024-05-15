import 'package:coffe_ui/src/data/resorces_list.dart';
import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:flutter/material.dart';

class ListviewShowTypeCoffee extends StatelessWidget {
  const ListviewShowTypeCoffee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                names[index],
                style: TextStyle(
                  color: category[index]
                      ? AppColors.colorOrange
                      : AppColors.colorWhite.withOpacity(.4),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
