import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class CouponsRow extends StatelessWidget {
  const CouponsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.discount_outlined,
          size: 20.sp,
          color: AppColor.kBlackColor.withOpacity(0.8),
        ),
        10.horizontalSpace,
        Text(
          "Apply Coupons",
          style: Styles.textStyle16,
        ),
        156.horizontalSpace,
        Text(
          "Select",
          style: Styles.textStyle14.copyWith(
            color: AppColor.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
