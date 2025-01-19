import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Personal Details",
          style: Styles.textStyle18,
        ),
        20.verticalSpace,
        Text(
          "Email Address",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        const CustomTextFormField(
          keyboardType: TextInputType.emailAddress,
          hint: "Email Address",
        ),
        28.verticalSpace,
        Text(
          "Password",
          style: Styles.textStyle12.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColor.kBlackColor,
          ),
        ),
        15.verticalSpace,
        CustomTextFormField(
          keyboardType: TextInputType.visiblePassword,
          obscureText: !_isPasswordVisible,
          suffixIcon: IconButton(
            icon: Icon(
              _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            color: AppColor.kHintColor,
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
          hint: 'Password',
        ),
        14.verticalSpace,
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Change Password",
              style: Styles.textStyle12.copyWith(
                color: AppColor.kPrimaryColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
