import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class TotalPriceRow extends StatelessWidget {
  const TotalPriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total",
          style: Styles.textStyle18.copyWith(
            color: AppColor.kSubtitle3Color,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "7,030",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kSubtitle3Color,
          ),
        ),
      ],
    );
  }
}
