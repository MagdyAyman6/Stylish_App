import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';

import '../../../../../../../core/utils/styles.dart';

class PaymentContainerList extends StatefulWidget {
  const PaymentContainerList({super.key});

  @override
  State<PaymentContainerList> createState() => _CustomPaymentContainerState();
}

class _CustomPaymentContainerState extends State<PaymentContainerList> {
  int _selectedIndex = -1; // Tracks the index of the selected widget

  List<String> images = [
    AssetsData.visaLogo,
    AssetsData.paypalLogo,
    AssetsData.maestroLogo,
    AssetsData.appleLogo,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Payment",
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              color: const Color(0xFF222222),
            ),
          ),
        ),
        10.verticalSpace,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index; // Update selected index
                });
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                height: 59.h,
                width: 309.w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4F4F4),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(
                    color: _selectedIndex == index
                        ? AppColor.kPrimaryColor
                        : Colors.transparent,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      alignment: Alignment.centerLeft,
                      images[index],
                      width: 62.w,
                      height: 24.h,
                    ),
                    Text(
                      "*********2109",
                      style: Styles.textStyle14.copyWith(
                        color: AppColor.kPaymentNumberColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
