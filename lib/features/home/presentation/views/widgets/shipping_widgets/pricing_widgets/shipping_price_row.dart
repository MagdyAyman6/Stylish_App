import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class ShippingPriceRow extends StatelessWidget {
  const ShippingPriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Shipping",
          style: Styles.textStyle18.copyWith(
            color: AppColor.kSubtitleColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "30",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kSubtitleColor,
          ),
        ),
      ],
    );
  }
}
