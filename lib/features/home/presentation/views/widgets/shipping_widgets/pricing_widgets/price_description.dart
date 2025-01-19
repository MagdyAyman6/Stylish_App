import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/shipping_widgets/pricing_widgets/shipping_price_row.dart';
import 'package:stylish/features/home/presentation/views/widgets/shipping_widgets/pricing_widgets/total_price_row.dart';

import '../../../../../../../core/utils/app_color.dart';
import 'order_price_row.dart';

class PriceDescription extends StatelessWidget {
  const PriceDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrderPriceRow(),
        18.verticalSpace,
        const ShippingPriceRow(),
        18.verticalSpace,
        const TotalPriceRow(),
        18.verticalSpace,
        const Divider(
          color: AppColor.kDividerColor,
        ),
      ],
    );
  }
}
