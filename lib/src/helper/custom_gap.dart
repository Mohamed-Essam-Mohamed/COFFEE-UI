import 'package:flutter/material.dart';

class Vertical {
  static Widget verticalGap(double height) {
    return SizedBox(
      height: height,
    );
  }
}

class Horizontal {
  static Widget horizontalGap(double width) {
    return SizedBox(
      width: width,
    );
  }
}
