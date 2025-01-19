import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              size: 18.sp,
              color: AppColor.kBlackColor,
            ),
            Text(
              "Delivery Address",
              style: Styles.textStyle14.copyWith(
                color: AppColor.kBlackColor,
              ),
            ),
          ],
        ),
        10.verticalSpace,
        Row(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              color: AppColor.kWhiteColor,
              elevation: 3,
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 240.w,
                height: 90.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address:",
                          style: Styles.textStyle12.copyWith(
                            color: AppColor.kBlackColor,
                          ),
                        ),
                        Text(
                          "216 St Paul's Rd, London N1 2LL, UK \nContact :  +44-784232",
                          style: Styles.textStyle12.copyWith(
                            color: AppColor.kBlackColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    // IconButton(
                    //   padding: EdgeInsets.only(bottom: 20.h,right: 20.w),
                    //   onPressed: () {},
                    //   iconSize: 12.sp,
                    //   icon: const Icon(
                    //     Icons.edit_outlined,
                    //     color: AppColor.kBlackColor,
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.edit_outlined,
                        color: AppColor.kBlackColor,
                        size: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              elevation: 3,
              color: AppColor.kWhiteColor,
              child: IconButton(
                padding: const EdgeInsets.all(30),
                highlightColor: Colors.transparent,
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline_outlined,
                  color: AppColor.kBlackColor,
                  size: 24.sp,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
