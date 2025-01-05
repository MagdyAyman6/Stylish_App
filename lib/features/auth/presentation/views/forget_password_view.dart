import 'package:flutter/material.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/features/auth/presentation/views/widgets/forget_password/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kWhiteColor,
        body: ForgetPasswordViewBody(),
      ),
    );
  }
}
