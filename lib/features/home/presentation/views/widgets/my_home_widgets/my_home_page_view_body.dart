import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/home_app_bar.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/home_deal_card/home_deal_card.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/special_offer_card/special_offer_card.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/sponsored_card/sponsored_card_item.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/summer_sale_card/summer_sale_card.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/trending_product_widgets/trending_product_container.dart';
import 'package:stylish/features/home/presentation/views/widgets/my_home_widgets/trending_product_widgets/trending_product_list_view.dart';
import 'all_feature_widgets/all_feature_list_view.dart';
import 'deal_of_day_widgets/deal_day_list_view.dart';
import 'home_features_bar.dart';
import 'home_offer_card/home_offer_card.dart';
import 'home_reward_card/home_reward_card.dart';
import 'home_search_bar.dart';

class MyHomePageViewBody extends StatelessWidget {
  const MyHomePageViewBody({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(),
            const HomeSearchBar(),
            const HomeFeaturesBar(text: "All Featured"),
            const AllFeatureListView(),
            HomeOfferCard(
              controller: controller,
            ),
            const HomeDealCard(),
            const DealDayListView(),
            const SpecialOfferCard(),
            const HomeRewardCard(),
            const TrendingProduct(),
            const TrendingProductListView(),
            const SummerSaleCard(),
            const SponsoredCardItem(),
          ],
        ),
      ),
    );
  }
}
