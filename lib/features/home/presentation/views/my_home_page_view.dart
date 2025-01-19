import 'package:flutter/material.dart';
import 'package:stylish/features/home/presentation/views/widgets/bottom_nav_bar/my_bottom_navigation_bar.dart';

import '../../../../core/utils/app_color.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kBackgroundScaffold,
        body: MyBottomNavigationBar(),
      ),
    );
  }
}
