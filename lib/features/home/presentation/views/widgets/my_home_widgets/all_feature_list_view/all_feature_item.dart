import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class AllFeatureItem extends StatelessWidget {
  const AllFeatureItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25.r,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          4.verticalSpace,
          Text(
            title,
            style: Styles.textStyle10.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColor.kTitleFeatureColor,
            ),
          ),
        ],
      ),
    );
  }
}
