import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';

class CustomRatingStar extends StatelessWidget {
  final double rating;
  final double reviewCount;

  const CustomRatingStar(
      {super.key, required this.rating, required this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Generate stars based on rating
        for (int i = 1; i <= 5; i++)
          Icon(
            i <= rating.floor()
                ? Icons.star // Full star
                : i - rating < 1
                    ? Icons.star_half // Half star
                    : Icons.star_border, // Empty star
            color: AppColor.kStarRatingColor,
            size: 14.sp, // Adjust size as needed
          ),
        4.horizontalSpace, // Add spacing
        Text(
          '$reviewCount', // Display review count
          style: Styles.textStyle10.copyWith(
            color: AppColor.kReviewCountColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
