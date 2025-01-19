import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/wishlist_widgets/wishlist_grid_view.dart';
import '../my_home_widgets/home_app_bar.dart';
import '../my_home_widgets/home_features_bar.dart';
import '../my_home_widgets/home_search_bar.dart';

class MyWishlistViewBody extends StatelessWidget {
  const MyWishlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeAppBar(),
            HomeSearchBar(),
            HomeFeaturesBar(text: "52,082+ Items"),
            WishlistGridView(),
          ],
        ),
      ),
    );
  }
}
