import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.h),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          filled: true,
          fillColor: AppColor.kWhiteColor,
          hintText: 'Search any Product..',
          hintStyle: Styles.textStyle14.copyWith(
              color: AppColor.kGreyColor, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColor.kWhiteColor,
            ),
            borderRadius: BorderRadius.circular(6.r),
          ),
          prefixIcon: const Icon(
            Icons.search_outlined,
            color: AppColor.kGreyColor,
            size: 20,
          ),
          suffixIcon: const Icon(
            Icons.mic_none_outlined,
            color: AppColor.kGreyColor,
            size: 24,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: const BorderSide(
              color: AppColor.kWhiteColor,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h),
        ),
      ),
    );
  }
}
