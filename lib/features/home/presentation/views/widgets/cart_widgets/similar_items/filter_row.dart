import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/styles.dart';
import '../../../../../../../core/widgets/custom_feature_container.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "282+ Items",
          style: Styles.textStyle18,
        ),
        Row(
          children: [
            CustomFeatureContainer(
              height: 24.h,
              width: 61.w,
              title: "Sort",
              icon: const Icon(
                Icons.sort_outlined,
              ),
            ),
            12.horizontalSpace,
            CustomFeatureContainer(
              height: 24.h,
              width: 61.w,
              title: "Filter",
              icon: const Icon(
                Icons.filter_alt_outlined,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
