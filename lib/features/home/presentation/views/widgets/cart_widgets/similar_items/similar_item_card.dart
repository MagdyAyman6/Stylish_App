import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/assets.dart';
import '../../../../../../../core/widgets/custom_card_item.dart';

class SimilarItemCard extends StatelessWidget {
  const SimilarItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCardItem(
      title: "Nike Sneakers",
      subTitle: "Nike Air Jordan Retro 1 Low Mystic Black",
      image: AssetsData.nikeSneakers,
      afterPrice: "₹1,900",
      beforePrice: "",
      discount: 0,
      width: 164.w,
      height: 136.h,
    );
  }
}
