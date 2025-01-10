import 'package:flutter/material.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/my_home_page_view_body.dart';

class MyHomePageView extends StatelessWidget {
  const MyHomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: AppColor.kWhiteColor,
        body: MyHomePageViewBody(
          controller: PageController(initialPage: 0),
        ),
      ),
    );
  }
}
