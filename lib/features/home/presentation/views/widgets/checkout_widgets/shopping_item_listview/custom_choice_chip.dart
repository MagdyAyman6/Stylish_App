import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/utils/app_color.dart';

class CustomChoiceChip extends StatelessWidget {
  const CustomChoiceChip({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    required this.textStyle,
  });

  final String title;
  final double width;
  final double height;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.kBlackColor, width: 0.2.w),
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
