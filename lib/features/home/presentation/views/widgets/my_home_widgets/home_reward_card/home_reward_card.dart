import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_button.dart';

class HomeRewardCard extends StatelessWidget {
  const HomeRewardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.h),
      width: 343.w,
      height: 171.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColor.kHomeRewardCover.withOpacity(0.3),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            AssetsData.heelsImg,
            width: 144.w,
            height: 108.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Flat and Heels',
                style: Styles.textStyle16.copyWith(
                  color: AppColor.kIconFeatureColor,
                ),
              ),
              Text(
                'Stand a chance to get rewarded',
                style: Styles.textStyle10.copyWith(
                  color: AppColor.kIconFeatureColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              15.verticalSpace,
              Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                      text: "Visit Now",
                      style: Styles.textStyle12
                          .copyWith(color: AppColor.kWhiteColor),
                      onTap: () {},
                      color: AppColor.kPrimaryColor,
                      width: 92.w,
                      height: 30.h,
                      borderColor: Colors.transparent))
            ],
          ),
        ],
      ),
    );
  }
}
