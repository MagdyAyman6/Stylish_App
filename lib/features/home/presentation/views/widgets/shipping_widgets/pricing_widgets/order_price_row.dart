import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class OrderPriceRow extends StatelessWidget {
  const OrderPriceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Order",
          style: Styles.textStyle18.copyWith(
            color: AppColor.kSubtitleColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "7,000",
          style: Styles.textStyle16.copyWith(
            color: AppColor.kSubtitleColor,
          ),
        ),
      ],
    );
  }
}
