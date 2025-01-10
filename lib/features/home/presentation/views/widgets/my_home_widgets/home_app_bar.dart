import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        const CircleAvatar(
          backgroundColor: AppColor.kSubtitle2Color,
          child: Icon(
            Icons.sort_outlined,
            size: 24,
            color: AppColor.kBlackColor,
          ),
        ),
        const HeadLogo(),
        Container(
          height: 40.h,
          width: 40.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AssetsData.profilePic),
            ),
          ),
        ),
      ],
    );
  }
}
