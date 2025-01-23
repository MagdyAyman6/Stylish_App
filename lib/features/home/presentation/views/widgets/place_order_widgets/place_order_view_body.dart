import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/place_order_widgets/bottom_sheet_container.dart';
import 'package:stylish/features/home/presentation/views/widgets/place_order_widgets/product_details.dart';
import '../../../../../../core/utils/app_color.dart';
import 'custom_app_bar.dart';
import 'order_payment_details.dart';
import 'order_total.dart';

class PlaceOrderViewBody extends StatefulWidget {
  const PlaceOrderViewBody({super.key});

  @override
  State<PlaceOrderViewBody> createState() => _PlaceOrderViewBodyState();
}

class _PlaceOrderViewBodyState extends State<PlaceOrderViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: const BottomSheetContainer(),
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.kBackgroundScaffold,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
        child: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              ProductDetails(),
              Divider(
                color: AppColor.kDividerColor,
              ),
              OrderPaymentDetails(),
              Divider(
                color: AppColor.kDividerColor,
              ),
              OrderTotal(),
            ],
          ),
        ),
      ),
    );
  }
}
