import '../../../utils/app_color.dart';
import '../../../utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class ContainerTextForm extends StatelessWidget {
  const ContainerTextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.colorWhite.withOpacity(.1),
      ),
      child: TextFormField(
        enabled: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.coffee,
            color: AppColors.colorWhite.withOpacity(.3),
          ),
          border: InputBorder.none,
          hintText: "Find Your Coffee...",
          hintStyle: AppTextStyle.textStyle15,
        ),
      ),
    );
  }
}
