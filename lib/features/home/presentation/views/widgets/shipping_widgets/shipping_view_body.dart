import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import 'package:stylish/features/home/presentation/views/widgets/shipping_widgets/payment_alert_dialog.dart';
import 'package:stylish/features/home/presentation/views/widgets/shipping_widgets/payment_widgets/payment_container_list.dart';
import 'package:stylish/features/home/presentation/views/widgets/shipping_widgets/pricing_widgets/price_description.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kWhiteColor,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kPlaceOrder);
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
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          children: [
            18.verticalSpace,
            const Divider(
              color: AppColor.kDividerColor,
              thickness: 0.25,
            ),
            18.verticalSpace,
            const PriceDescription(),
            18.verticalSpace,
            const PaymentContainerList(),
            25.verticalSpace,
            CustomButton(
              text: "Continue",
              style: Styles.textStyle24.copyWith(
                color: AppColor.kWhiteColor,
                fontWeight: FontWeight.w700,
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => const PaymentAlertDialog(),
                );
              },
              color: AppColor.kPrimaryColor,
              width: 309.w,
              height: 59.h,
              borderColor: Colors.transparent,
            ),
            80.verticalSpace,
          ],
        ),
      ),
    );
  }
}
