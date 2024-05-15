import 'package:coffe_ui/src/data/resorces_list.dart';
import 'package:coffe_ui/src/feature/details/widget/container_size.dart';
import 'package:coffe_ui/src/feature/details/widget/section_price.dart';
import 'package:coffe_ui/src/feature/details/widget/section_topshow_coffee.dart';
import 'package:coffe_ui/src/helper/custom_gap.dart';
import 'package:coffe_ui/src/utils/app_color.dart';
import 'package:coffe_ui/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final int index;
  const DetailsScreen(this.index, {super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  var s = true;
  var m = false;
  var l = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.colorBlack,
        child: Column(
          children: [
            SectionTopShowCoffee(index: widget.index, s: s, m: m),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: AppTextStyle.textStyle18.copyWith(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          verticalGap(20),
                          Text(
                            "A cappuccino is the perfect balance of espresso, steamed milk. This coffee is all about the structure.",
                            style: AppTextStyle.textStyle15,
                          ),
                          verticalGap(10),
                          Text(
                            "Size",
                            style: AppTextStyle.textStyle18.copyWith(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          verticalGap(5),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    s = true;
                                    m = false;
                                    l = false;
                                    setState(() {});
                                  },
                                  child: ContainerSize(select: s, size: "S"),
                                ),
                                InkWell(
                                  onTap: () {
                                    s = false;
                                    m = true;
                                    l = false;
                                    setState(() {});
                                  },
                                  child: ContainerSize(select: m, size: "M"),
                                ),
                                InkWell(
                                  onTap: () {
                                    s = false;
                                    m = false;
                                    l = true;
                                    setState(() {});
                                  },
                                  child: ContainerSize(select: l, size: "L"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SectionPrice(s: s, index: widget.index, m: m),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
