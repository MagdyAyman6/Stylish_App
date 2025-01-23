import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import 'item_description/custom_container.dart';

class CompareAndSimilarContainers extends StatelessWidget {
  const CompareAndSimilarContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: CustomContainer(
              height: 48.h,
              width: 165.w,
              title: "View Similar",
              titleStyle: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.kBlackColor,
              ),
              icon: const Icon(
                Icons.visibility_outlined,
              ),
              iconColor: AppColor.kBlackColor.withOpacity(0.7),
              iconSize: 24.sp,
              onTap: () {},
              borderColor: const Color(0xffD9D9D9),
              borderRadius: 8.r,
              borderWidth: 0.5.w,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: CustomContainer(
              height: 48.h,
              width: 165.w,
              title: "Add to Compare",
              titleStyle: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w500,
                color: AppColor.kBlackColor,
              ),
              icon: const Icon(
                Icons.compare_outlined,
              ),
              iconColor: AppColor.kBlackColor.withOpacity(0.7),
              iconSize: 24.sp,
              onTap: () {},
              borderColor: const Color(0xffD9D9D9),
              borderRadius: 8.r,
              borderWidth: 0.5.w,
            ),
          ),
        ],
      ),
    );
  }
}
