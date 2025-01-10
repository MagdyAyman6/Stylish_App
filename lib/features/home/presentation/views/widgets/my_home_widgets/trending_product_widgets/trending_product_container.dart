import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_button.dart';

class TrendingProduct extends StatelessWidget {
  const TrendingProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      width: 343.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColor.kTrendingContainer,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Trending Products ",
                style: Styles.textStyle16.copyWith(
                  color: AppColor.kWhiteColor,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.date_range,
                    size: 13.sp,
                    color: AppColor.kWhiteColor,
                  ),
                  4.horizontalSpace,
                  Text(
                    "Last Date 29/02/22",
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.kWhiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          CustomButton(
            text: "Visit all",
            style: Styles.textStyle12.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColor.kWhiteColor,
            ),
            onTap: () {},
            color: Colors.transparent,
            width: 90.w,
            height: 30.h,
            borderColor: AppColor.kWhiteColor,
          ),
        ],
      ),
    );
  }
}
