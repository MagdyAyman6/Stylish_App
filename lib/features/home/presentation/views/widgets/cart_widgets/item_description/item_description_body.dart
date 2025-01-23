import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_rating_star.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/item_description/custom_container.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/product_details.dart';

class ItemDescriptionBody extends StatelessWidget {
  const ItemDescriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        15.verticalSpace,
        Text(
          "Nike Sneakers",
          style: Styles.textStyle20.copyWith(
            color: AppColor.kBlackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "Vision Alta Men’s Shoes Size (All Colours)",
          style: Styles.textStyle14.copyWith(
            color: AppColor.kBlackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
        8.verticalSpace,
        const CustomRatingStar(
          rating: 4.5,
          reviewCount: 56.890,
        ),
        8.verticalSpace,
        Row(
          children: [
            Text(
              "\$2999",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColor.kGreyColor,
                decoration: TextDecoration.lineThrough,
                decorationColor: AppColor.kGreyColor,
              ),
            ),
            8.horizontalSpace,
            Text(
              "\$1500",
              style: Styles.textStyle14.copyWith(
                color: AppColor.kBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            8.horizontalSpace,
            Text(
              "50% Off",
              style: Styles.textStyle14.copyWith(
                color: AppColor.kTrendingContainer,
              ),
            ),
          ],
        ),
        8.verticalSpace,
        const ProductCartDetails(),
        Row(
          children: [
            CustomContainer(
              onTap: () {},
              height: 24.h,
              width: 96.w,
              borderRadius: 4.r,
              borderWidth: 1.w,
              title: "Nearest Store",
              titleStyle: Styles.textStyle10.copyWith(
                color: AppColor.kCustomContainerBorder,
              ),
              borderColor: AppColor.kCustomContainerBorder,
              iconSize: 16.sp,
              icon: const Icon(
                Icons.location_on_outlined,
              ),
              iconColor: AppColor.kCustomContainerBorder,
            ),
            8.horizontalSpace,
            CustomContainer(
              onTap: () {},
              height: 24.h,
              width: 46.w,
              borderColor: AppColor.kCustomContainerBorder,
              borderRadius: 4.r,
              borderWidth: 1.w,
              title: "VIP",
              titleStyle: Styles.textStyle10.copyWith(
                color: AppColor.kCustomContainerBorder,
              ),
              iconSize: 16.sp,
              icon: const Icon(
                Icons.lock_outline_rounded,
              ),
              iconColor: AppColor.kCustomContainerBorder,
            ),
            8.horizontalSpace,
            CustomContainer(
              onTap: () {},
              height: 24.h,
              width: 96.w,
              title: "Return policy",
              titleStyle: Styles.textStyle10.copyWith(
                color: AppColor.kCustomContainerBorder,
              ),
              borderColor: AppColor.kCustomContainerBorder,
              borderRadius: 4.r,
              borderWidth: 1.w,
              iconSize: 16.sp,
              icon: const Icon(
                Icons.policy_outlined,
              ),
              iconColor: AppColor.kCustomContainerBorder,
            ),
          ],
        ),
        12.verticalSpace,
        Container(
          padding: EdgeInsets.only(top: 11.h, left: 23.w),
          width: 350.w,
          height: 70.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            color: AppColor.kRoseColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery in",
                style: Styles.textStyle14.copyWith(
                  color: AppColor.kBlackColor,
                ),
              ),
              Text(
                "1 within Hour",
                style: Styles.textStyle20.copyWith(
                  color: AppColor.kBlackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        16.verticalSpace,
      ],
    );
  }
}
