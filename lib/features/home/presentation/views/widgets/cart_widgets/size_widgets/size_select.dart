import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class SizeSelect extends StatefulWidget {
  const SizeSelect({super.key});

  @override
  State<SizeSelect> createState() => _SizeSelectState();
}

class _SizeSelectState extends State<SizeSelect> {
  List<String> sizes = ["6 UK", "7 UK", "8 UK", "9UK", "10UK"];
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size: ${sizes[currentIndex]}",
          style: Styles.textStyle14.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        10.verticalSpace,
        Row(
          children: sizes.asMap().entries.map((entry) {
            final index = entry.key;
            final size = entry.value;
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index; // Update the selected size
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 56.w,
                height: 32.h,
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  color: currentIndex == index
                      ? AppColor.kPrimaryColor
                          .withOpacity(0.8) // Highlight selected size
                      : AppColor.kWhiteColor, // Default background color
                  border: Border.all(
                    color: AppColor.kPrimaryColor.withOpacity(0.8),
                    width: 1.w,
                  ),
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  size,
                  style: Styles.textStyle14.copyWith(
                    color: currentIndex == index
                        ? AppColor
                            .kWhiteColor // Highlight text for selected size
                        : AppColor.kPrimaryColor
                            .withOpacity(0.8), // Default text color
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
