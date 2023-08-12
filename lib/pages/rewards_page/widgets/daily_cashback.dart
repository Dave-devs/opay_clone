import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import '../../../common/app_colors/app_colors.dart';

class DailyCashBack extends StatelessWidget {
  const DailyCashBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: 330.w,
      height: 80.h,
      decoration: const BoxDecoration(
        color: AppColors.kContainer,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          iconWidget(),
          WidthSpacer(width: 15.w),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                    text: AppStrings.rDailyCashback,
                    style: appStyle(16.sp, FontWeight.w500, AppColors.kBlackText)
                ),
                ReusableText(
                    text: AppStrings.rDailySubText,
                    style: appStyle(12.sp, FontWeight.w500, AppColors.kDarkIcon)
                ),
                ReusableText(
                    text: AppStrings.rCashAtRandom,
                    style: appStyle(12.sp, FontWeight.w500, AppColors.kDarkIcon)
                ),
              ],
            ),
          ),
          WidthSpacer(width: 70.w),
          lastTextIcon()
        ],
      ),
    );
  }
}


Widget iconWidget() {
  return Container(
    width: 45.w,
    height: 45.h,
    decoration: const BoxDecoration(
      color: AppColors.kPrimAcctColor,
      borderRadius: BorderRadius.all(Radius.circular(10))
    ),
    child: const Icon(Ionicons.calendar, size: 20,color: AppColors.kPrimaryColor,),
  );
}

Widget lastTextIcon() {
  return Container(
    child: Row(
      children: [
        ReusableText(
            text: AppStrings.rDailyLastText,
            style: appStyle(
              16.sp,
              FontWeight.w500,
              AppColors.kBlackText
            )
        ),
        const Icon(Icons.arrow_forward_ios, size: 14,)
      ],
    ),
  );
}
