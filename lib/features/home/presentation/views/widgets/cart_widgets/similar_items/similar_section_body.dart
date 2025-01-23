import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/cart_widgets/similar_items/similar_item_list_view.dart';
import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';
import 'filter_row.dart';

class SimilarSectionBody extends StatelessWidget {
  const SimilarSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Similar To",
          style: Styles.textStyle20.copyWith(
            color: AppColor.kBlackColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        10.verticalSpace,
        const FilterRow(),
        const SimilarItemListView(),
      ],
    );
  }
}
