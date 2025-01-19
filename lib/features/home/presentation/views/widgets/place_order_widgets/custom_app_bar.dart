import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';
import '../../../../../../core/utils/styles.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            // GoRouter.of(context).
          },
          child: Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.kBlackColor,
            size: 18.sp,
          ),
        ),
        GestureDetector(
          child: Text(
            "Shopping Bag",
            style: Styles.textStyle18,
          ),
        ),
        Icon(
          Icons.favorite_border_rounded,
          color: AppColor.kBlackColor,
          size: 18.sp,
        ),
      ],
    );
  }
}
