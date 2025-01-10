import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../../../core/utils/app_color.dart';

class IndicatorCard extends StatelessWidget {
  const IndicatorCard({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: JumpingDotEffect(
        dotHeight: 10.h,
        dotWidth: 10.w,
        dotColor: AppColor.kIndicatorColor.withOpacity(0.2),
        activeDotColor: AppColor.kIndicator2Color,
      ),
    );
  }
}
