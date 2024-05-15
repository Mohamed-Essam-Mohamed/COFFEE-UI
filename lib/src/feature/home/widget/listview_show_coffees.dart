import 'package:coffe_ui/src/feature/home/widget/cart_item.dart';
import 'package:flutter/material.dart';

class ListViewShowCoffee extends StatelessWidget {
  const ListViewShowCoffee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 9,
        itemBuilder: (context, index) {
          return InkWell(
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Details(index),
              //   ),
              // );
            },
            child: CartItem(index: index),
          );
        },
      ),
    );
  }
}
