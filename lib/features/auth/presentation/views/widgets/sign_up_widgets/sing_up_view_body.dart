import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/auth/presentation/views/widgets/sign_up_widgets/sign_up_form.dart';

import '../../../../../../core/utils/styles.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 25.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Create an\naccount",
                style: Styles.textStyle36,
              ),
            ),
            24.verticalSpace,
            const SignUpForm(),
          ],
        ),
      ),
    );
  }
}
