import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import '../utils/assets.dart';
import '../utils/styles.dart';

class HeadLogo extends StatelessWidget {
  const HeadLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 39.w,
          height: 31.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.stylishLogo),
            ),
          ),
        ),
        9.horizontalSpace,
        Text(
          "Stylish",
          style: Styles.textStyle18.copyWith(
            color: AppColor.kStylishColor,
          ),
        ),
      ],
    );
  }
}
