import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/styles.dart';

Row buildLogInText({void Function()? onTap}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'I Already Have an Account ',
        style: Styles.textStyle14.copyWith(
          color: AppColor.kHintColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          'Log In',
          style: Styles.textStyle14.copyWith(color: AppColor.kPrimaryColor),
        ),
      ),
    ],
  );
}
