import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class OnboardingContent extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback? onTap;

  const OnboardingContent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 111.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: Colors.transparent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Styles.textStyle24.copyWith(
              color: AppColor.kBlackColor,
            ),
          ),
          10.verticalSpace,
          Text(
            subTitle,
            style: Styles.textStyle14.copyWith(color: AppColor.kSubtitleColor),
            maxLines: 5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
