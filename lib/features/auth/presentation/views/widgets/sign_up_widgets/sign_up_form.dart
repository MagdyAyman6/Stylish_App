import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/features/auth/presentation/views/widgets/sign_up_widgets/register_text.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';

import '../log_in_widgets/build_log_in_text.dart';
import '../social_media_log_in.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: buildBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextFormField(
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icon(
              Icons.person,
              color: AppColor.kIconFormField,
            ),
            hint: 'Username or Email',
          ),
          31.verticalSpace,
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_isPasswordVisible,
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.kHintColor,
            ),
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
          31.verticalSpace,
          CustomTextFormField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_isPasswordVisible,
            prefixIcon: const Icon(
              Icons.lock,
              color: AppColor.kHintColor,
            ),
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
            hint: 'ConfirmPassword',
          ),
          20.verticalSpace,
          const RegisterText(),
          38.verticalSpace,
          CustomButton(
            text: "Create Account",
            style: Styles.textStyle18.copyWith(
              color: AppColor.kWhiteColor,
            ),
            onTap: () {},
            color: AppColor.kPrimaryColor,
            borderColor: Colors.transparent,
            width: 317.w,
            height: 55.h,
          ),
          40.verticalSpace,
          Align(
            alignment: Alignment.center,
            child: Text(
              "- OR Continue with -",
              style: Styles.textStyle12,
            ),
          ),
          20.verticalSpace,
          const SocialMediaLogin(),
          28.verticalSpace,
          buildLogInText(
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  Icon buildIcon() {
    return const Icon(
      Icons.email_outlined,
      size: 30,
      color: Colors.grey,
    );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      // color: AppColor.kPrimaryColor,
      borderRadius: BorderRadius.circular(16.r),
    );
  }
}
