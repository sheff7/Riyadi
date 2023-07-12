import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../CustomWidget/CustomFont/BottomBlackFont.dart';
import '../../Sports/View/SportList.dart';

class SportItemWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color backgroundColor;

  const SportItemWidget({
    required this.imagePath,
    required this.title,
    required this.backgroundColor,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const SportList());
      },
      child: Column(
        children: [
          Container(
            height:MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(.9.h),
              color: backgroundColor,
            ),
            child: Container(
              margin: EdgeInsets.all(1.h),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          SizedBox(height: .7.h),
          Center(
            child: IconFont(
              text: title,
            ),
          ),
          SizedBox(height: .5.h,)
        ],
      ),
    );
  }
}
