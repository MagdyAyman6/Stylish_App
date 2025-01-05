import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).pushReplacement(AppRouter.kMyLogin);
      },
      child: const Text(
        "Skip",
        style: Styles.textStyle18,
      ),
    );
  }
}
