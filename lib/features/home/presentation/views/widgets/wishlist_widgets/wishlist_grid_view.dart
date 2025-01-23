import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/features/home/presentation/views/widgets/wishlist_widgets/wishlist_item.dart';

class WishlistGridView extends StatelessWidget {
  const WishlistGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 5.h,
            childAspectRatio: 0.62,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              GoRouter.of(context).pushReplacement(AppRouter.kCartView);
            },
            child: WishlistItem(
              width: 165.w,
              height: 190.h,
              image: AssetsData.menStarryImg,
              title: "Mens Starry",
              subTitle: "Mens Starry Sky Printed Shirt 100% Cotton Fabric",
              price: "₹399",
            ),
          ),
        ),
      ],
    );
  }
}
