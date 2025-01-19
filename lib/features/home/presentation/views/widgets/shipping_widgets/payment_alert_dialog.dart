import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class PaymentAlertDialog extends StatelessWidget {
  const PaymentAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.kWhiteColor,
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6.r),
      ),
      title: Text(
        "Payment done successfully.",
        style: Styles.textStyle14.copyWith(
          color: AppColor.kAlertDialogTitle,
        ),
      ),
      icon: CircleAvatar(
        radius: 35.r,
        backgroundColor: AppColor.kPrimaryColor,
        child: Icon(
          Icons.check,
          color: AppColor.kWhiteColor,
          size: 35.sp,
        ),
      ),
    );
  }
}
