import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

Widget topCard() {
  return Container(
    width: 380.w,
    height: 130.h,

    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    decoration: BoxDecoration(
      color: AppColors.kPrimaryColor,
      borderRadius: BorderRadius.circular(5),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
                text: 'Save towards a financial goal',
                style: appStyle(15.sp, FontWeight.w500, AppColors.kBlackText)
            ),
            Container(
              padding: EdgeInsets.only(left: 4.w, right: 4.h),
              decoration: BoxDecoration(
                color: AppColors.kPrimAcctColor,
                borderRadius: BorderRadius.circular(5)
              ),
              child: ReusableText(
                  text: 'Target Savings',
                  style: appStyle(10.sp, FontWeight.w400, AppColors.kBlackText)
              ),
            )
          ],
        ),
        HeightSpacer(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReusableText(
                text: 'Earn 17% p.a.',
                style: appStyle(15.sp, FontWeight.w400, AppColors.kBlackText)
            ),
          ],
        ),
        HeightSpacer(height: 20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2.w),
              decoration: BoxDecoration(
                color: AppColors.kPrimAcctColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: ReusableText(
                text: 'Deposit now',
                style: appStyle(12.sp, FontWeight.w200, AppColors.kBlackText),
              ),
            ),
          ],
        )
      ],
    )
  );
}