import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_form_field.dart';
import '../sign_up_widgets/build_sing_up_text.dart';
import '../social_media_log_in.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          10.verticalSpace,
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kForgetPassView);
              },
              child: Text(
                "Forgot Password?",
                style: Styles.textStyle12.copyWith(
                  color: AppColor.kPrimaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          51.verticalSpace,
          CustomButton(
            text: 'Login',
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRouter.kMyHomeView);
            },
            style: Styles.textStyle18.copyWith(color: AppColor.kWhiteColor),
            color: AppColor.kPrimaryColor,
            width: 317.w,
            height: 55.h,
          ),
          75.verticalSpace,
          const Align(
            alignment: Alignment.center,
            child: Text(
              "- OR Continue with -",
              style: Styles.textStyle12,
            ),
          ),
          20.verticalSpace,
          const SocialMediaLogin(),
          30.verticalSpace,
          buildSignUpText(
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSignUpView);
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
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16.r),
    );
  }
}
