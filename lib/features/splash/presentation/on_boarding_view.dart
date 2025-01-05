import 'package:flutter/material.dart';
import 'package:stylish/features/splash/presentation/widgets/on_boarding_widgets/on_boarding_view_body.dart';

import '../../../core/utils/app_color.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      body: SafeArea(
        child: OnboardingViewBody(),
      ),
    );
  }
}
