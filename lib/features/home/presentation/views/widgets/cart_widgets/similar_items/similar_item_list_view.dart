import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/similar_items/similar_item_card.dart';

class SimilarItemListView extends StatelessWidget {
  const SimilarItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 10.w),
          child: const SimilarItemCard(),
        ),
      ),
    );
  }
}
