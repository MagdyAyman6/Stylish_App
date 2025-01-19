import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/core/widgets/custom_rating_star.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/pricing.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/total_order_price.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/variations_row.dart';

class ShoppingItem extends StatelessWidget {
  const ShoppingItem({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColor.kWhiteColor,
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: 313.w,
        height: 190.h,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 130.w,
                  height: 125.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Styles.textStyle14.copyWith(
                        color: AppColor.kBlackColor,
                      ),
                    ),
                    7.verticalSpace,
                    const VariationsRow(),
                    5.verticalSpace,
                    const CustomRatingStar(
                      rating: 4.5,
                      reviewCount: 4.8,
                    ),
                    10.verticalSpace,
                    const Pricing(),
                  ],
                ),
              ],
            ),
            const Divider(
              color: AppColor.kDividerColor,
            ),
            const TotalOrderPrice(),
          ],
        ),
      ),
    );
  }
}
