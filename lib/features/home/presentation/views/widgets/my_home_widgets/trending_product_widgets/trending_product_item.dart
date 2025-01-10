import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/assets.dart';

import '../../../../../../../core/widgets/custom_card_item.dart';

class TrendingProductItem extends StatelessWidget {
  const TrendingProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      width: 142.w,
      height: 100.h,
      title: "IWC Schaffhausen",
      subTitle: "2021 Pilot's Watch SIHH 2019 44mm",
      image: AssetsData.watchImg,
      afterPrice: "650",
      beforePrice: "1599",
      discount: 60,
    );
  }
}
