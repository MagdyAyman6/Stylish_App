import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:stylish/core/utils/app_router.dart';
import 'package:stylish/core/widgets/custom_button.dart';
import 'package:stylish/features/home/presentation/views/widgets/profile/personal_details.dart';
import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';
import 'bank_account_details.dart';
import 'business_address_details.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBackgroundScaffold,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.kWhiteColor,
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pushReplacement(AppRouter.kMyHomeView);
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.kBlackColor,
            size: 18.sp,
          ),
        ),
        title: Text(
          "Profile",
          style: Styles.textStyle18,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 96.h,
                  width: 96.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(AssetsData.profilePic),
                    ),
                  ),
                ),
              ),
              28.verticalSpace,
              const PersonalDetails(),
              36.verticalSpace,
              const Divider(
                color: AppColor.kGreyColor,
              ),
              34.verticalSpace,
              const BusinessAddressDetails(),
              34.verticalSpace,
              const Divider(
                color: AppColor.kGreyColor,
              ),
              32.verticalSpace,
              const BankAccountDetails(),
              34.verticalSpace,
              CustomButton(
                text: "Save",
                style: Styles.textStyle16.copyWith(
                  color: AppColor.kWhiteColor,
                  fontWeight: FontWeight.w600,
                ),
                onTap: () {
                  GoRouter.of(context).pushReplacement(AppRouter.kCheckout);
                },
                color: AppColor.kPrimaryColor,
                width: 327.w,
                height: 52.h,
                borderColor: Colors.transparent,
              ),
              57.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
