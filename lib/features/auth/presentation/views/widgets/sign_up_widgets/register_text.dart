import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'By clicking the ',
        style: Styles.textStyle12,
        children: [
          TextSpan(
            text: 'Register',
            style: Styles.textStyle12.copyWith(color: AppColor.kPrimaryColor),
          ),
          const TextSpan(
            text: ' button, you agree \nto the public offer',
            style: Styles.textStyle12,
          ),
        ],
      ),
    );
  }
}
