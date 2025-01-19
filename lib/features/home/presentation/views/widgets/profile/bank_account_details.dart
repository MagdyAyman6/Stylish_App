import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class BankAccountDetails extends StatelessWidget {
  const BankAccountDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bank Account Details",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        28.verticalSpace,
        Text(
          "Bank Account Number",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.number,
          hint: "Bank Account Number",
        ),
        28.verticalSpace,
        Text(
          "Account Holder’s Name",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.name,
          hint: "Account Holder’s Name",
        ),
        28.verticalSpace,
        Text(
          "IFSC Code",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.text,
          hint: "IFSC Code",
        ),
      ],
    );
  }
}
