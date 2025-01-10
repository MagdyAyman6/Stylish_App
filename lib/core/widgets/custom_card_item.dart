import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import '../utils/styles.dart';
import 'custom_rating_star.dart';

class CustomCardItem extends StatelessWidget {
  const CustomCardItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.afterPrice,
    required this.beforePrice,
    required this.discount,
    required this.width,
    required this.height,
  });

  final String title;
  final String subTitle;
  final String image;
  final String afterPrice;
  final String beforePrice;
  final double discount;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        12.verticalSpace,
        Container(
          width: 170.w,
          height: 124.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.r),
              topRight: Radius.circular(4.r),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          width: 170.w,
          decoration: BoxDecoration(
            color: AppColor.kWhiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kBlackColor,
                ),
              ),
              4.verticalSpace,
              Text(
                subTitle,
                style: Styles.textStyle10.copyWith(
                  color: AppColor.kBlackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              4.verticalSpace,
              Text(
                afterPrice,
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kBlackColor,
                ),
              ),
              Row(
                children: [
                  Text(
                    beforePrice,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColor.kGreyColor,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: AppColor.kGreyColor,
                    ),
                  ),
                  4.horizontalSpace,
                  Text(
                    '$discount%Off',
                    style: Styles.textStyle10.copyWith(
                      color: AppColor.kPrimaryColor,
                    ),
                  ),
                ],
              ),
              4.verticalSpace,
              const CustomRatingStar(
                rating: 4.5,
                reviewCount: 56890,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
