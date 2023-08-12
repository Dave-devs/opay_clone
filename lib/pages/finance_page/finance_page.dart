import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import 'package:opay_clone/pages/finance_page/widgets/first_block.dart';
import 'package:opay_clone/pages/finance_page/widgets/second_block.dart';
import 'package:opay_clone/pages/finance_page/widgets/third_block.dart';
import 'package:opay_clone/pages/finance_page/widgets/top_card.dart';
import '../../common/app_colors/app_colors.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBG,
      appBar: AppBar(
        elevation: 0,
        title: ReusableText(
          text: 'Finance from our Partners',
          style: appStyle(24.sp, FontWeight.w500, AppColors.kBlackText),
        ),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: [
          topCard(),

          HeightSpacer(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ReusableText(text: 'Savings',
                  style: appStyle(17.sp, FontWeight.w500, AppColors.kBlackText)
              ),
              ReusableText(text: 'Loan',
                  style: appStyle(16.sp, FontWeight.w500, Colors.grey)
              ),
            ],
          ),

          HeightSpacer(height: 20.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(text: 'Total Balance',
                  style: appStyle(13.sp, FontWeight.w300, AppColors.kBlackText)
              ),
              ReusableText(text: 'Total Interest',
                  style: appStyle(13.sp, FontWeight.w300, AppColors.kBlackText)
              ),
            ],
          ),

          HeightSpacer(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ReusableText(text: '\$15,000.00',
                  style: appStyle(18.sp, FontWeight.w600, AppColors.kBlackText)
              ),
              ReusableText(text: '\$5,000.00',
                  style: appStyle(18.sp, FontWeight.w600, AppColors.kPrimaryColor)
              ),
            ],
          ),

          HeightSpacer(height: 10.h),

          Container(
            width: 300.w,
            height: 150.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent.shade200,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.money, color: Colors.purpleAccent,),
                    WidthSpacer(width: 5.w),
                    ReusableText(
                        text: 'OWealth',
                        style: appStyle(14.sp, FontWeight.w300, AppColors.kBlackText)
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReusableText(
                        text: 'Your daily returns. Withdraw any time.',
                        style: appStyle(13.sp, FontWeight.normal, AppColors.kIconDisable)
                    ),
                  ],
                ),

                HeightSpacer(height: 70.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ReusableText(
                        text: '\$50,500.45',
                        style: appStyle(14.sp, FontWeight.w500, AppColors.kBlackText)
                    ),
                  ],
                ),
              ],
            ),
          ),

          HeightSpacer(height: 10.h),

          firstBlock(),

          HeightSpacer(height: 10.h),

          secondBlock(),

          HeightSpacer(height: 10.h),

          thirdBlock(),

          HeightSpacer(height: 30.h),
        ],
      )
    );
  }
}
