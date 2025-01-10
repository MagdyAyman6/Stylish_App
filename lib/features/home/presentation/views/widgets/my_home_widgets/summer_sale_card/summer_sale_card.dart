import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/widgets/custom_button.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/utils/styles.dart';

class SummerSaleCard extends StatelessWidget {
  const SummerSaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      width: 343.w,
      height: 280.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColor.kWhiteColor,
      ),
      child: Column(
        children: [
          Image.asset(
            alignment: Alignment.topCenter,
            AssetsData.summerCover,
            height: 200.h,
            width: 343.w,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.h,bottom: 10.h,left: 8.w,right: 12.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "New Arrivals",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColor.kBlackColor,
                      ),
                    ),
                    Text(
                      "Summer’ 25 Collections",
                      style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColor.kBlackColor,
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  text: "Visit all",
                  style: Styles.textStyle12.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColor.kWhiteColor,
                  ),
                  onTap: () {},
                  color: AppColor.kPrimaryColor,
                  width: 90.w,
                  height: 30.h,
                  borderColor: Colors.transparent,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
