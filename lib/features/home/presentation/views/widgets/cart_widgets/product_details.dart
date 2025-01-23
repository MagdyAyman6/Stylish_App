import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class ProductCartDetails extends StatelessWidget {
  const ProductCartDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Product Details",
          style: Styles.textStyle14.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        8.verticalSpace,
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text:
                  "Perhaps the most iconic sneaker of all-time, this original colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kBlackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
        ),
        8.verticalSpace,
      ],
    );
  }
}
