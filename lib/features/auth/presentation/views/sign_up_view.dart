import 'package:flutter/material.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/features/auth/presentation/views/widgets/sign_up_widgets/sing_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kWhiteColor,
        body: SignUpViewBody(),
      ),
    );
  }
}
