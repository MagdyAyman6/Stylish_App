import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';

class SocialMediaLogin extends StatelessWidget {
  const SocialMediaLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26.r,
                child: Image.asset(
                  AssetsData.googleImg,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              10.horizontalSpace,
              CircleAvatar(
                radius: 26.r,
                child: Image.asset(
                  AssetsData.appleImg,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
              10.horizontalSpace,
              CircleAvatar(
                radius: 26.r,
                child: Image.asset(
                  AssetsData.facebookImg,
                  height: 24.h,
                  width: 24.w,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
