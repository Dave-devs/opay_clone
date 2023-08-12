import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

Widget firstBlock() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 150.w,
        height: 150.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.kIconDisable.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.control_point, color: Colors.blue,),
                WidthSpacer(width: 5.w),
                ReusableText(text: 'Targets',
                    style: appStyle(12.sp, FontWeight.w200, AppColors.kBlackText)
                )
              ],
            ),
            HeightSpacer(height: 10.h),
            Text(
                'Your savings daily, weekly or monthly towards your targets.',
                softWrap: true,
                style: appStyle(13.sp, FontWeight.w300, Colors.grey)
            )
          ],
        ),
      ),

      WidthSpacer(width: 15.w),

      Container(
        width: 150.w,
        height: 150.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.kIconDisable.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.control_point, color: Colors.red,),
                WidthSpacer(width: 5.w),
                ReusableText(text: 'Targets',
                    style: appStyle(12.sp, FontWeight.w200, AppColors.kBlackText)
                )
              ],
            ),
            HeightSpacer(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ReusableText(
                    text: '\$100,000.00',
                    style: appStyle(16.sp, FontWeight.w500, AppColors.kBlackText)
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}