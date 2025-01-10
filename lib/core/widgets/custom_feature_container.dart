import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';

class CustomFeatureContainer extends StatelessWidget {
  const CustomFeatureContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.title,
      required this.icon});

  final double height;
  final double width;
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColor.kWhiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: Styles.textStyle12.copyWith(
              color: AppColor.kBlackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          Icon(
            icon.icon,
            size: 16.sp,
            color: AppColor.kIconFeatureColor,
          ),
        ],
      ),
    );
  }
}
