import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_button.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      width: 393.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          topRight: Radius.circular(24.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "7,000.00",
                style: Styles.textStyle16,
              ),
              Text(
                "\tView Details",
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
            ],
          ),
          CustomButton(
            text: "Proceed to Payment",
            style: Styles.textStyle18.copyWith(color: AppColor.kWhiteColor),
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRouter.kShipping);
            },
            color: AppColor.kPrimaryColor,
            width: 219.w,
            height: 50.h,
            borderColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
