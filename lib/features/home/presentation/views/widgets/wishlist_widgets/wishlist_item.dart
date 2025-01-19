import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_rating_star.dart';

class WishlistItem extends StatelessWidget {
  const WishlistItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.price,
    required this.width,
    required this.height,
  });

  final String title;
  final String subTitle;
  final String image;
  final String price;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        12.verticalSpace,
        Container(
          width: 165.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.r),
              topRight: Radius.circular(8.r),
            ),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
          width: 165.w,
          decoration: BoxDecoration(
            color: AppColor.kWhiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.r),
              bottomRight: Radius.circular(8.r),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                title,
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kBlackColor,
                ),
              ),
              4.verticalSpace,
              Text(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                subTitle,
                style: Styles.textStyle10.copyWith(
                  color: AppColor.kBlackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              4.verticalSpace,
              Text(
                price,
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kBlackColor,
                ),
              ),
              4.verticalSpace,
              const CustomRatingStar(
                rating: 4.5,
                reviewCount: 52344,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
