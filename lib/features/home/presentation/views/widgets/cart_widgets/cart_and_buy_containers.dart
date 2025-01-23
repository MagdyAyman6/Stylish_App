import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class CartAndBuyContainers extends StatelessWidget {
  const CartAndBuyContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pushReplacement(AppRouter.kCheckout);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 12.h),
            width: 136.w,
            height: 36.h,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF3F92FF),
                  Color(0xFF0B3689),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColor.kWhiteColor,
                  size: 24.sp,
                ),
                Text(
                  "Go to cart",
                  style: Styles.textStyle16.copyWith(
                    color: AppColor.kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        13.horizontalSpace,
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pushReplacement(AppRouter.kPlaceOrder);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: 12.h),
            width: 136.w,
            height: 36.h,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF71F9A9),
                  Color(0xFF31B769),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.ads_click_outlined,
                  color: AppColor.kWhiteColor,
                  size: 24.sp,
                ),
                Text(
                  "Buy Now",
                  style: Styles.textStyle16.copyWith(
                    color: AppColor.kWhiteColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
