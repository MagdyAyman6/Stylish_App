import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_router.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: IconButton(
        highlightColor: Colors.transparent,
        iconSize: 20.sp,
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kPlaceOrder);
        },
        icon: const Icon(
          Icons.shopping_cart_outlined,
          color: AppColor.kCartIconColor,
        ),
      ),
    );
  }
}
