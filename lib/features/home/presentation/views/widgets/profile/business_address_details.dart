import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class BusinessAddressDetails extends StatelessWidget {
  const BusinessAddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Business Address Details",
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        22.verticalSpace,
        Text(
          "Pin code",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.number,
          hint: "Pin code",
        ),
        28.verticalSpace,
        Text(
          "Address",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.streetAddress,
          hint: "Address",
        ),
        28.verticalSpace,
        Text(
          "City",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.text,
          hint: "City",
        ),
        28.verticalSpace,
        Text(
          "State",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        DropdownMenu(
          menuStyle: MenuStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(AppColor.kWhiteColor),
          ),
          enabled: true,
          enableSearch: true,
          width: 330.w,
          controller: TextEditingController(),
          hintText: "Select a state",
          textStyle: Styles.textStyle12,
          trailingIcon: Icon(
            color: const Color(0xff9CA4AB),
            Icons.keyboard_arrow_down_outlined,
            size: 25.sp,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColor.kFormFieldBorderColor,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
          dropdownMenuEntries: const [
            DropdownMenuEntry(
              value: 0,
              label: "Egypt",
            ),
            DropdownMenuEntry(
              value: 0,
              label: "USA",
            ),
          ],
        ),
        28.verticalSpace,
        Text(
          "Country",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.text,
          hint: "Country",
        ),
      ],
    );
  }
}
