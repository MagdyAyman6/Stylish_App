import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/features/splash/presentation/widgets/on_boarding_widgets/get_started_button.dart';
import 'package:stylish/features/splash/presentation/widgets/on_boarding_widgets/skip_button.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';
import 'next_button.dart';
import 'on_boarding_page_indicator.dart';
import 'on_boarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  final PageController controller = PageController();
  int _currentPage = 0;
  int pageNum = 1;
  List<int> pages = [1, 2, 3];

  void nextPage() {
    if (_currentPage < 2) {
      controller.nextPage(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInCirc,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("${pages[_currentPage]}", style: Styles.textStyle18),
                  Text(
                    "/3",
                    style: Styles.textStyle18
                        .copyWith(color: AppColor.kSubtitleColor),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kMyLogin);
                },
                child: const SkipButton(),
              ),
            ],
          ),
        ),
        50.verticalSpace,
        SizedBox(
          height: 500.h,
          width: 300.w,
          child: OnboardingPageView(
            onTap: nextPage,
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        120.verticalSpace,
        Stack(
          alignment: Alignment.center,
          children: [
            OnboardingPageIndicator(controller: controller),
            Align(
              alignment: Alignment.centerRight,
              child: _currentPage == 2
                  ? const GetStartedButton()
                  : NextButton(onTap: nextPage),
            ),
          ],
        ),
      ],
    );
  }
}
