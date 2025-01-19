import 'package:flutter/material.dart';
import 'package:stylish/features/home/presentation/views/widgets/wishlist_widgets/my_wishlist_view_body.dart';

import '../../../../core/utils/app_color.dart';

class MyWishlistView extends StatelessWidget {
  const MyWishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.kBackgroundScaffold,
        body: MyWishlistViewBody(),
      ),
    );
  }
}
