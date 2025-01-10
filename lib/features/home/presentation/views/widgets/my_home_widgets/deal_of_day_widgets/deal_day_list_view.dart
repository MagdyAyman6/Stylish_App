import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'deal_day_item.dart';

class DealDayListView extends StatelessWidget {
  const DealDayListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 280.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: const DealDayItem(),
        ),
      ),
    );
  }
}
