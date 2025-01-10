import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/home_offer_card/indicator_card.dart';

class HomeOfferCard extends StatelessWidget {
  const HomeOfferCard({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.verticalSpace,
        Container(
          padding: EdgeInsets.only(left: 14.w),
          width: 343.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AssetsData.offerCardCover,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "50-40% OFF",
                style: Styles.textStyle20,
              ),
              Text(
                "Now in (product)\nAll colours",
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kWhiteColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              12.verticalSpace,
              CustomButton(
                text: "Shop Now ",
                style: Styles.textStyle12.copyWith(color: AppColor.kWhiteColor),
                onTap: () {},
                borderColor: AppColor.kWhiteColor,
                color: Colors.transparent,
                width: 100.w,
                height: 32.h,
              ),
            ],
          ),
        ),
        16.verticalSpace,
        IndicatorCard(
          controller: controller,
        ),
        18.verticalSpace,

      ],
    );
  }
}
