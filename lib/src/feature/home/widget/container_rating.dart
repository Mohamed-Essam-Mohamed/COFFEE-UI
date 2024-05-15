import '../../../data/resorces_list.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ContainerRating extends StatelessWidget {
  final int index;
  const ContainerRating({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 25,
        width: 50,
        decoration: BoxDecoration(
          color: AppColors.colorBlack.withOpacity(.7),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(
              Icons.star,
              color: AppColors.colorOrange,
              size: 14,
            ),
            Text(
              ratting[index].toString(),
              style: AppTextStyle.textStyle17,
            )
          ],
        ),
      ),
    );
  }
}
