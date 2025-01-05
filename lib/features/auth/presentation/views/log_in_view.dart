import 'package:flutter/material.dart';
import 'package:stylish/features/auth/presentation/views/widgets/log_in_widgets/log_in_view_body.dart';

import '../../../../core/utils/app_color.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kWhiteColor,
        body: LogInViewBody(),
      ),
    );
  }
}
