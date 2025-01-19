import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/styles.dart';
import '../../../../../../core/utils/app_color.dart';

class OrderTotal extends StatelessWidget {
  const OrderTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        25.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "7,000.00",
              style: Styles.textStyle16,
            ),
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Text(
              "EMI  Available ",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            22.horizontalSpace,
            Text(
              "Details",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
