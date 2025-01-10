import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/widgets/custom_card_item.dart';

class DealDayItem extends StatelessWidget {
  const DealDayItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomCardItem(
        width: 170.w,
        height: 124.h,
        title: "Women Printed Kurta",
        subTitle: "Neque porro quisquam est qui dolorem ipsum quia",
        image: AssetsData.dealItemImg,
        beforePrice: "2499",
        afterPrice: "1500",
        discount: 40,
      ),
    );
  }
}
