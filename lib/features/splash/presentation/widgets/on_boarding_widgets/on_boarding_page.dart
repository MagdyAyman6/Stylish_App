import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/assets.dart';
import 'on_boarding_content.dart';

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 300.w,
          height: 300.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.onBoarding1Img),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: OnboardingContent(
              title: title,
              subTitle: subTitle,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
