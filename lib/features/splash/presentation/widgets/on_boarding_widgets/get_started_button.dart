import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      iconAlignment: IconAlignment.start,
      onPressed: () {
        GoRouter.of(context).pushReplacement(AppRouter.kMyLogin);
      },
      child: Text(
        "Get Started",
        style: Styles.textStyle18.copyWith(color: AppColor.kPrimaryColor),
      ),
    );
  }
}
