import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/core/utils/styles.dart';

class SponsoredCardItem extends StatelessWidget {
  const SponsoredCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      height: 375.h,
      width: 343.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColor.kWhiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sponsored",
            style: Styles.textStyle20.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColor.kBlackColor,
            ),
          ),
          12.verticalSpace,
          Container(
            width: 340.w,
            height: 292.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AssetsData.sponsoredImg,
                ),
              )
            ),
            // child: Image.asset(
            //   fit: BoxFit.fill,
            //   AssetsData.sponsoredImg,
            //   width: 341.w,
            //   height: 292.h,
            // ),
          ),
          5.verticalSpace,
          Text(
            "up to 50% Off",
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColor.kBlackColor,
            ),
          ),
        ],
      ),
    );
  }
}
