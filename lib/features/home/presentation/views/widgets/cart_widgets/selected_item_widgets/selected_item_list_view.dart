import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/selected_item_widgets/selected_item.dart';

import 'item_indicator.dart';

class SelectedItemListView extends StatefulWidget {
  const SelectedItemListView({super.key});

  @override
  State<SelectedItemListView> createState() => _SelectedItemListViewState();
}

class _SelectedItemListViewState extends State<SelectedItemListView> {
  final PageController _pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 240.h,
          width: double.infinity,
          child: PageView.builder(
            itemCount: 5,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index; // Update current index
              });
            },
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: const SelectedItem(),
            ),
          ),
        ),
        ItemIndicator(
          controller: _pageController,
        ),
        16.verticalSpace,
      ],
    );
  }
}
