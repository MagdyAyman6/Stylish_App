import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/core/utils/styles.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 343.w,
      height: 90.h,
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Row(
        children: [
          Image.asset(
            AssetsData.specialOfferLogo,
            width: 75.w,
            height: 60.h,
          ),
          25.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Special Offers",
                style: Styles.textStyle16,
              ),
              5.verticalSpace,
              Text(
                "We make sure you get \nthe offer you need at best prices.",
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kBlackColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
