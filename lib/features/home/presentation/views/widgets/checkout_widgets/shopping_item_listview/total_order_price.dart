import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class TotalOrderPrice extends StatelessWidget {
  const TotalOrderPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Total Order (1) :",
          style: Styles.textStyle12.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        Text(
          "\$34.00",
          style: Styles.textStyle12.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
      ],
    );
  }
}
