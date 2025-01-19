import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';

class OrderPaymentDetails extends StatelessWidget {
  const OrderPaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        35.verticalSpace,
        Text(
          "Order Payment Details",
          style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        26.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Amounts",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "7,000.00",
              style: Styles.textStyle16,
            ),
          ],
        ),
        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Convenience",
                  style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                14.horizontalSpace,
                Text(
                  "Know More",
                  style: Styles.textStyle12.copyWith(
                    color: AppColor.kPrimaryColor,
                  ),
                ),
              ],
            ),
            Text(
              "Apply Coupon",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
        12.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Delivery Fee",
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColor.kBlackColor,
              ),
            ),
            Text(
              "Free",
              style: Styles.textStyle14.copyWith(
                color: AppColor.kPrimaryColor,
              ),
            ),
          ],
        ),
        40.verticalSpace,
      ],
    );
  }
}
