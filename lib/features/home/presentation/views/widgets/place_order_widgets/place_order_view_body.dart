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
      appBar: null,
      bottomSheet: BottomSheetContainer(),
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.kBackgroundScaffold,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "Shopping Bag",
      //     style: Styles.textStyle18,
      //   ),
      //   backgroundColor: AppColor.kWhiteColor,
      //   forceMaterialTransparency: true,
      //   leading: IconButton(
      //     onPressed: () {
      //       GoRouter.of(context).pushReplacement(AppRouter.kMyHomeView);
      //     },
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: AppColor.kBlackColor,
      //       size: 18.sp,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.favorite_border_rounded,
      //         color: AppColor.kBlackColor,
      //         size: 18.sp,
      //       ),
      //     ),
      //   ],
      // ),
      // bottomSheet: const BottomSheetContainer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 30.h),
        child:  SingleChildScrollView(
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

