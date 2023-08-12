import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

Widget freeUsageTile({required IconData iconData, required String text, required String subText}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       Container(
         width: 25.w,
         height: 25.h,
         decoration: const BoxDecoration(
           color: AppColors.kPrimAcctColor,
           shape: BoxShape.circle
         ),
         child: Icon(iconData, color: AppColors.kPrimaryColor,),
       ),
        WidthSpacer(width: 10.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ReusableText(text: text, style: appStyle(14.sp, FontWeight.w500, AppColors.kBlackText)),
            HeightSpacer(height: 4.h),
            AutoSizeText(
                subText,
                softWrap: true,
                maxLines: 2,
                style: appStyle(10.sp, FontWeight.w300, AppColors.kBlackText)
            ),
          ],
        )
      ],
    ),
  );
}