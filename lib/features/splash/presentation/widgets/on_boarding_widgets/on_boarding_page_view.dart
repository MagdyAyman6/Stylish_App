import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'on_boarding_page.dart';

class OnboardingPageView extends StatefulWidget {
  final PageController controller;
  final Function(int) onPageChanged;
  final void Function()? onTap;

  const OnboardingPageView({
    super.key,
    required this.controller,
    required this.onPageChanged,
    required this.onTap,
  });

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.controller,
      onPageChanged: widget.onPageChanged,
      children: [
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.stylishLogo,
          title: "Choose Products",
          subTitle:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        ),
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.stylishLogo,
          title: "Make Payment",
          subTitle:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        ),
        OnboardingPage(
          onTap: widget.onTap,
          image: AssetsData.stylishLogo,
          title: "Get Your Order",
          subTitle:
              "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
        ),
      ],
    );
  }
}
