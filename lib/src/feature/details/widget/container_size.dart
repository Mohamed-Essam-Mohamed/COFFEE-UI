import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:flutter/material.dart';

class ContainerSize extends StatelessWidget {
  const ContainerSize({
    super.key,
    required this.select,
    required this.size,
  });

  final String size;
  final bool select;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 110,
      decoration: BoxDecoration(
        color: select
            ? AppColors.colorBlack
            : AppColors.colorWhite.withOpacity(.1),
        borderRadius: BorderRadius.circular(10),
        border: Border(
          right: BorderSide(
            color: select ? AppColors.colorOrange : AppColors.colorBlack,
          ),
          left: BorderSide(
            color: select ? AppColors.colorOrange : AppColors.colorBlack,
          ),
          top: BorderSide(
            color: select ? AppColors.colorOrange : AppColors.colorBlack,
          ),
          bottom:
              BorderSide(color: select ? Colors.orange : AppColors.colorBlack),
        ),
      ),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            color: select
                ? AppColors.colorOrange
                : AppColors.colorWhite.withOpacity(.8),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
