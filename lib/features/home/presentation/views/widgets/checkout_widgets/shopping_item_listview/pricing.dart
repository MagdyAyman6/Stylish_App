import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';
import 'custom_choice_chip.dart';

class Pricing extends StatelessWidget {
  const Pricing({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomChoiceChip(
          title: "\$34.00",
          width: 84.w,
          height: 29.h,
          textStyle: Styles.textStyle16.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        10.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "up to 33% off",
              style: Styles.textStyle8.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
            Text(
              "\$64.00",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColor.kGreyColor,
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColor.kGreyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
