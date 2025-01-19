import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/shopping_item.dart';

import '../../../../../../../core/utils/assets.dart';

class ShoppingItemListview extends StatelessWidget {
  const ShoppingItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      trackVisibility: true,
      radius: Radius.circular(12.r),
      child: SizedBox(
        height: 400.h,
        child: ListView.builder(
          padding: EdgeInsets.only(right: 6.w),
          itemCount: 4,
          itemBuilder: (context, index) => const ShoppingItem(
            title: 'Women’s Casual Wear',
            image: AssetsData.dealItemImg,
          ),
        ),
      ),
    );
  }
}
