import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import 'package:stylish/core/widgets/custom_text_form_field.dart';
import '../../../../../../core/utils/styles.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 25.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot\npassword?",
                style: Styles.textStyle36,
              ),
            ),
            32.verticalSpace,
            const CustomTextFormField(
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(
                Icons.email,
                color: AppColor.kIconFormField,
              ),
              hint: "Enter your email address",
            ),
            26.verticalSpace,
            Text(
              "We will send you a message to set or reset \nyour new password",
              style: Styles.textStyle12.copyWith(fontWeight: FontWeight.w400),
            ),
            26.verticalSpace,
            CustomButton(
              text: "Submit",
              style: Styles.textStyle18.copyWith(color: AppColor.kWhiteColor),
              onTap: () {},
              color: AppColor.kPrimaryColor,
              borderColor: Colors.transparent,
              width: 317.w,
              height: 55.h,
            ),
          ],
        ),
      ),
    );
  }
}
