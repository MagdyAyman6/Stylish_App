import 'package:flutter/material.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

Row buildSignUpText({void Function()? onTap}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Create An Account ',
        style: Styles.textStyle14.copyWith(
          color: AppColor.kHintColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          'Sign up',
          style: Styles.textStyle14.copyWith(
            color: AppColor.kPrimaryColor,
          ),
        ),
      ),
    ],
  );
}
