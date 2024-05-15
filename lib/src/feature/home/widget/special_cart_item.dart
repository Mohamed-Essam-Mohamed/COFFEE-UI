import 'package:coffe_ui/src/helper/custom_gap.dart';
import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:coffe_ui/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SpecialCartItem extends StatelessWidget {
  final AssetImage asset;
  const SpecialCartItem({required this.asset, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.colorWhite.withOpacity(.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 110,
        width: double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: asset,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            horizontalGap(20),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "5 Coffee Beans You\nMust try!",
                style: AppTextStyle.textStyle17,
              ),
            )
          ],
        ),
      ),
    );
  }
}
