import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/selected_item_widgets/selected_item_list_view.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/similar_items/similar_section_body.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/size_widgets/size_select.dart';
import 'cart_and_buy_containers.dart';
import 'cart_icon_widget.dart';
import 'compare_and_similar_containers.dart';
import 'item_description/item_description_body.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
            highlightColor: Colors.transparent,
            padding: EdgeInsets.only(top: 20.h),
            onPressed: () {
              GoRouter.of(context).pushReplacement(AppRouter.kMyHomeView);
            },
            color: Colors.transparent,
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: AppColor.kBlackColor,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 16.w, top: 20.h),
              child: const CartIconWidget(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectedItemListView(),
              SizeSelect(),
              ItemDescriptionBody(),
              CompareAndSimilarContainers(),
              CartAndBuyContainers(),
              SimilarSectionBody(),
            ],
          ),
        ),
      ),
    );
  }
}
