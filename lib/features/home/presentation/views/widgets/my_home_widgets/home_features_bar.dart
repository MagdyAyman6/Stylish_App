import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/styles.dart';

import '../../../../../../core/widgets/custom_feature_container.dart';

class HomeFeaturesBar extends StatelessWidget {
  const HomeFeaturesBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.textStyle18,
        ),
        80.horizontalSpace,
        CustomFeatureContainer(
          height: 24.h,
          width: 61.w,
          title: "Sort",
          icon: const Icon(Icons.sort_outlined),
        ),
        CustomFeatureContainer(
          height: 24.h,
          width: 67.w,
          title: "Filter",
          icon: const Icon(Icons.filter_alt_outlined),
        ),
      ],
    );
  }
}
