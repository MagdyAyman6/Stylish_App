import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/core/utils/app_color.dart';
import 'package:stylish/core/utils/assets.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/all_feature_widgets/all_feature_item.dart';

class AllFeatureListView extends StatefulWidget {
  const AllFeatureListView({super.key});

  @override
  State<AllFeatureListView> createState() => _AllFeatureListViewState();
}

class _AllFeatureListViewState extends State<AllFeatureListView> {
  final List<Map<String, String>> features = [
    {
      'name': 'Beauty',
      'image': AssetsData.beautyFeatureImg,
    },
    {
      'name': 'Fashion',
      'image': AssetsData.fashionFeatureImg,
    },
    {
      'name': 'Kids',
      'image': AssetsData.kidsFeatureImg,
    },
    {
      'name': 'Men',
      'image': AssetsData.menFeatureImg,
    },
    {
      'name': 'Women',
      'image': AssetsData.womenFeatureImg,
    },
    {
      'name': 'Gifts',
      'image': AssetsData.giftsFeatureImg,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      width: 439.w,
      height: 87.h,
      decoration: BoxDecoration(
        color: AppColor.kWhiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: ListView.builder(
        itemCount: features.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => AllFeatureItem(
          title: "${features[index]['name']}",
          image: "${features[index]['image']}",
        ),
      ),
    );
  }
}
