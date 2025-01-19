import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/widgets/head_logo.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          backgroundColor: AppColor.kSubtitle2Color,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort_outlined),
            color: AppColor.kBlackColor,
          ),
        ),
        const HeadLogo(),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kProfileView);
          },
          child: Container(
            height: 40.h,
            width: 40.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(AssetsData.profilePic),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
