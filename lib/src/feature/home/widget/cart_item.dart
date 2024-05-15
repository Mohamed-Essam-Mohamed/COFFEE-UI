import 'package:coffe_ui/src/data/resorces_list.dart';
import 'package:coffe_ui/src/feature/home/widget/container_rating.dart';
import 'package:coffe_ui/src/helper/custom_gap.dart';
import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:coffe_ui/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final int index;
  const CartItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: AppColors.colorWhite.withOpacity(.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(right: 20),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 155,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 120,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image(
                        image: images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    ContainerRating(index: index),
                  ],
                ),
              ),
            ),
            verticalGap(20),
            Text(
              names[index],
              style: AppTextStyle.textStyle20,
            ),
            verticalGap(5),
            Text(
              with_[index],
              style: AppTextStyle.textStyle15,
            ),
            verticalGap(10),
            Row(
              children: [
                Text(
                  "\$ ",
                  style: AppTextStyle.textStyle18
                      .copyWith(color: AppColors.colorOrange),
                ),
                Text(
                  prices[index],
                  style: AppTextStyle.textStyle18,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
