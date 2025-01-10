import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/widgets/custom_button.dart';

import '../../../../../../../core/utils/styles.dart';

class HomeDealCard extends StatelessWidget {
  const HomeDealCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: 343.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: AppColor.kStylishColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Deal of the Day",
                style: Styles.textStyle18.copyWith(
                  color: AppColor.kWhiteColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.timer_outlined,
                    size: 16,
                    color: AppColor.kWhiteColor,
                  ),
                  Text(
                    " 22h 55m 20s remaining ",
                    style: Styles.textStyle12.copyWith(
                      color: AppColor.kWhiteColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomButton(
            text: "View all",
            style: Styles.textStyle12.copyWith(color: AppColor.kWhiteColor,),
            onTap: () {},
            color: Colors.transparent,
            width: 89.w,
            height: 28.h,
            borderColor: AppColor.kWhiteColor,
          ),
        ],
      ),
    );
  }
}
