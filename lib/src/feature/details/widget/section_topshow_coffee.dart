import '../../../helper/custom_gap.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../data/resorces_list.dart';

class SectionTopShowCoffee extends StatelessWidget {
  const SectionTopShowCoffee({
    super.key,
    required this.index,
    required this.s,
    required this.m,
  });

  final int index;
  final bool s;
  final bool m;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image(
                  image: images[index],
                  fit: BoxFit.cover,
                ),
              ),
              const ContainerTopIcon(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.colorBlack.withOpacity(.6),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                names[index],
                                style: AppTextStyle.textStyle25,
                              ),
                              verticalGap(5),
                              Text(
                                with_[index],
                                style: AppTextStyle.textStyle17,
                              ),
                              verticalGap(15),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: AppColors.colorOrange,
                                  ),
                                  horizontalGap(10),
                                  Text(
                                    s
                                        ? ratting[index].toString()
                                        : m
                                            ? mediumRating[index].toString()
                                            : largeRating[index].toString(),
                                    style: AppTextStyle.textStyle20,
                                  ),
                                  horizontalGap(10),
                                  Text(
                                    s
                                        ? prefix[index]
                                        : m
                                            ? prefixMedium[index]
                                            : prefixLarge[index],
                                    style: AppTextStyle.textStyle15,
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              containerIcon(
                                icon: Icons.coffee_outlined,
                                title: "Coffee",
                              ),
                              horizontalGap(15),
                              containerIcon(
                                icon: Icons.water_drop_rounded,
                                title: "Milk",
                              ),
                            ],
                          ),
                          verticalGap(10),
                          Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              color: AppColors.colorBlack,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                s
                                    ? "Small Roasted"
                                    : m
                                        ? "Medium Roasted"
                                        : "Large Roasted",
                                style: AppTextStyle.textStyle17,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container containerIcon({required IconData icon, required String title}) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.colorBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: AppColors.colorOrange,
            ),
            Text(
              title,
              style: TextStyle(
                color: AppColors.colorWhite.withOpacity(.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerTopIcon extends StatelessWidget {
  const ContainerTopIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(
          top: 50,
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            containerIcon(
              icon: Icons.arrow_back_ios_outlined,
            ),
            containerIcon(
              icon: Icons.favorite,
            ),
          ],
        ),
      ),
    );
  }

  Container containerIcon({required IconData icon}) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: AppColors.colorBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        icon,
        color: AppColors.colorOrange,
      ),
    );
  }
}
