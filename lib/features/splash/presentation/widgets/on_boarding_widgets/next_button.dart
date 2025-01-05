import 'package:flutter/material.dart';
import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        "Next",
        style: Styles.textStyle18.copyWith(color: AppColor.kPrimaryColor),
      ),
    );
  }
}
