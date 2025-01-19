import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/checkout_widgets/shopping_item_listview/custom_choice_chip.dart';
import '../../../../../../../core/utils/app_color.dart';
import '../../../../../../../core/utils/styles.dart';

class VariationsRow extends StatelessWidget {
  const VariationsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Variations :",
          style: Styles.textStyle12.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        8.horizontalSpace,
        CustomChoiceChip(
          width: 39.w,
          height: 18.h,
          title: "Black",
          textStyle: Styles.textStyle10.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
        5.horizontalSpace,
        CustomChoiceChip(
          width: 39.w,
          height: 18.h,
          title: "Red",
          textStyle: Styles.textStyle10.copyWith(
            color: AppColor.kBlackColor,
          ),
        ),
      ],
    );
  }
}
