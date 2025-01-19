import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/assets.dart';

class GetStartedViewBody extends StatelessWidget {
  const GetStartedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 250.h),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsData.getStartedCover),
            // colorFilter: ColorFilter.srgbToLinearGamma(),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.65),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textAlign: TextAlign.center,
                "You want \n Authentic, here \n you go!",
                style: Styles.textStyle36.copyWith(
                  color: AppColor.kWhiteColor,
                ),
              ),
              15.verticalSpace,
              Text(
                "Find it here, buy it now!",
                style: Styles.textStyle14.copyWith(
                  color: AppColor.kSubtitle2Color,
                  fontWeight: FontWeight.w400,
                ),
              ),
              40.verticalSpace,
              CustomButton(
                text: "Get Started",
                style: Styles.textStyle24.copyWith(color: AppColor.kWhiteColor),
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kMyLogin);
                },
                color: AppColor.kPrimaryColor,
                borderColor: Colors.transparent,
                width: 279.w,
                height: 55.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
