import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import 'package:opay_clone/pages/rewards_page/widgets/deposit_widget.dart';
import 'package:opay_clone/pages/rewards_page/widgets/app_bar.dart';
import 'package:opay_clone/pages/rewards_page/widgets/bottom_container.dart';
import 'package:opay_clone/pages/rewards_page/widgets/daily_cashback.dart';
import 'package:opay_clone/pages/rewards_page/widgets/voucher_widget.dart';
import 'package:opay_clone/pages/rewards_page/widgets/withdraw_widget.dart';
import '../../common/app_colors/app_colors.dart';

class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kPrimAcctColor,
        title: AppBarWidget(
            text: AppStrings.rRewards,
            icon: Icons.more_horiz_outlined,
            color: AppColors.kDarkIcon,
            size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const CashbackVoucherWidget(),
              HeightSpacer(height: 10.h),
              const DailyCashBack(),
              HeightSpacer(height: 15.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReusableText(
                        text: AppStrings.rDailyBonus,
                        style: appStyle(20, FontWeight.w500, AppColors.kBlackText)
                    ),
                  ],
                ),
              ),
              HeightSpacer(height: 15.h),
              const DepositWidget(),
              HeightSpacer(height: 10.h),
              const WithdrawWidget(),
              HeightSpacer(height: 15.h),
              GestureDetector(
                onTap: () { },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ReusableText(
                        text: AppStrings.rViewAll,
                        style: appStyle(12, FontWeight.w500, AppColors.kPrimaryColor)
                    ),
                    const Icon(Icons.expand_more, size: 14, color: AppColors.kPrimaryColor,)
                  ],
                ),
              ),
              HeightSpacer(height: 10.h),
              const BottomContainer(),
              HeightSpacer(height: 15.h),
            ],
          ),
        ),
      )
    );
  }
}
