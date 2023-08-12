import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

import '../../../common/utils/spacers.dart';

class DepositWidget extends StatelessWidget {
  const DepositWidget({super.key, });

  // final Icon icon1;
  // final Icon icon2;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 330.w,
        height: 110.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                firstRowText(AppStrings.rDeposit, AppStrings.rPlusHund ),
                HeightSpacer(height: 5.h),
                ReusableText(
                    text: AppStrings.rDeposit2,
                    style: appStyle(12.sp, FontWeight.w500, AppColors.kDarkIcon)
                ),
                ReusableText(
                    text: AppStrings.rDeposit3,
                    style: GoogleFonts.poppins(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kDarkIcon,
                      letterSpacing: 0.2
                    )
                ),
                HeightSpacer(height: 5.h),
                expires()
              ],
            ),
          ),
          WidthSpacer(width: 36.w),
          button()
        ],
      ),
    );
  }
}

Widget iconWidget() {
  return Container(
    width: 45.w,
    height: 45.h,
    decoration: BoxDecoration(
        color: AppColors.kPrimAcctColor,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        //shape: BoxShape.circle,
        border: Border.all(color: AppColors.kPrimaryColor)
    ),
    child: const Icon(Ionicons.calendar, size: 20,color: AppColors.kPrimaryColor,),
  );
}

Widget button() {
  return GestureDetector(
    onTap: () { },
    child: Container(
      width: 60.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(30.w)),
      ),
      child: Center(
          child: ReusableText(
            text: 'Go',
            style: appStyle(
                18.sp,
                FontWeight.w500,
                Colors.white
            ),
          )
      ),
    ),

  );
}

Widget firstRowText(String text, String text2) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
            text: text,
            style: appStyle(16.sp, FontWeight.w500, AppColors.kBlackText)
        ),
        WidthSpacer(width: 10.w),
        Row(
          children: [
            const Icon(Icons.monetization_on_rounded, size: 17,color: AppColors.kTextYellow),
            ReusableText(
                text: text2,
                style: appStyle(16.sp, FontWeight.w500, AppColors.kPrimaryColor)
            )
          ],
        )
      ],
    ),
  );
}

Widget expires() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.timer_outlined, size: 16,color: AppColors.kTextYellow),
        WidthSpacer(width: 10.w),
        ReusableText(
            text: AppStrings.rDeposit4,
            style: appStyle(12.sp, FontWeight.w400, AppColors.kTextYellow)
        ),
      ],
    ),
  );
}
