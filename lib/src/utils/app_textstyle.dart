import 'app_color.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static const TextStyle textStyle30 = TextStyle(
    color: AppColors.colorWhite,
    fontWeight: FontWeight.bold,
    fontSize: 30,
  );
  static const TextStyle textStyle25 = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.none,
  );
  static const TextStyle textStyle20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
  static const TextStyle textStyle18 = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );
  static const TextStyle textStyle17 = TextStyle(
    color: Colors.white,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle15 = TextStyle(
    color: AppColors.colorWhite.withOpacity(.5),
    fontSize: 15,
  );
}
