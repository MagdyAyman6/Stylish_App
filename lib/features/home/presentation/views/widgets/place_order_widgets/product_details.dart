import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/styles.dart';
import 'package:stylish/features/home/presentation/views/widgets/place_order_widgets/size_qty_row.dart';
import '../../../../../../core/utils/assets.dart';
import 'coupons_row.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30.h),
              alignment: Alignment.center,
              width: 123.w,
              height: 153.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.r),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.dealItemImg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            21.horizontalSpace,
            SizedBox(
              width: 188.w,
              height: 130.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Women’s Casual Wear",
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    overflow: TextOverflow.ellipsis,
                    "Checked Single-Breasted Blazer",
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizeQtyRow(),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Delivery by ",
                          style: Styles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextSpan(
                          text: "10 May 2XXX",
                          style: Styles.textStyle16.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        54.verticalSpace,
        const CouponsRow(),
        36.verticalSpace,
      ],
    );
  }
}
