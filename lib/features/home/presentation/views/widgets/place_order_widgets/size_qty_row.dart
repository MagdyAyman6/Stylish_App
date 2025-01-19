import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';

class SizeQtyRow extends StatelessWidget {
  const SizeQtyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DropdownMenu<String>(
          dropdownMenuEntries: const [
            DropdownMenuEntry<String>(
              label: '42',
              value: '42',
            ),
            DropdownMenuEntry<String>(
              label: '43',
              value: '43',
            ),
          ],
          hintText: 'Size',
          width: 85.w,
          textStyle: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w400,
          ),
          inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            constraints: BoxConstraints.tightFor(height: 25.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),
        DropdownMenu<String>(
          dropdownMenuEntries: const [
            DropdownMenuEntry<String>(
              label: '1',
              value: '1',
            ),
            DropdownMenuEntry<String>(
              label: '2',
              value: '2',
            ),
          ],
          hintText: 'Qty',
          width: 85.w,
          textStyle: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w400,
          ),
          inputDecorationTheme: InputDecorationTheme(
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            constraints: BoxConstraints.tightFor(height: 25.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
        ),
      ],
    );
  }
}
