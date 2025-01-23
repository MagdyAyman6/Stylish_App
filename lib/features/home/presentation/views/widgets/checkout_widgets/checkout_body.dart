import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/shopping_item_listview.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import 'delivery_address.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kWhiteColor,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            // GoRouter.of(context).pop();
            GoRouter.of(context).pushReplacement(AppRouter.kCartView);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.kBlackColor,
            size: 18.sp,
          ),
        ),
        title: Text(
          "Checkout",
          style: Styles.textStyle18,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            18.verticalSpace,
            const Divider(
              color: AppColor.kDividerColor,
              thickness: 0.25,
            ),
            18.verticalSpace,
            const DeliveryAddress(),
            24.verticalSpace,
            Text(
              "Shopping List",
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            10.verticalSpace,
            const ShoppingItemListview(),
          ],
        ),
      ),
    );
  }
}
