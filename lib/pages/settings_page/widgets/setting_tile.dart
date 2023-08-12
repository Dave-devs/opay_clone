import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

Widget settingsTiles(String subString,{required String text,required IconData iconData,}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            icon: Icon(iconData, color: AppColors.kPrimaryColor,),
            onPressed: () {  },
          ),
          ReusableText(
              text: text,
              style: appStyle(14.sp, FontWeight.w400, AppColors.kBlackText)
          ),
        ],
      ),
      const Icon(Icons.chevron_right_outlined, color: AppColors.kBlackText,)
    ],
  );
}