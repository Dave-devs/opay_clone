import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import '../../../common/app_strings/app_strings.dart';

class GreenCardWidget extends StatelessWidget {
  const GreenCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      width: 330.w,
      height: 200.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: AppColors.kPrimaryColor
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 18, 16, 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row( //First Text and Icon
                    children: [
                      ReusableText(
                          text: AppStrings.availableBalance,
                          style: GoogleFonts.poppins(
                            letterSpacing: 0.2,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kWhiteText
                          )
                      ),
                      const WidthSpacer(width: 2),
                      const Icon(Ionicons.eye_outline, size: 14, color: AppColors.kWhiteText,)
                    ],
                  ),

                  Row( //First Text and Icon
                    children: [
                          Text(
                          AppStrings.transHistory,
                          textAlign: TextAlign.right,
                          style: GoogleFonts.poppins(
                            letterSpacing: 0.2,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.kWhiteText
                          )
                      ),
                      const WidthSpacer(width: 2),
                      const Icon(Ionicons.chevron_forward, size: 14, color: AppColors.kWhiteText,)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child:  middleText()
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30.w, 12.h, 30.w, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconAndText(AppStrings.addMoney, const Icon(Icons.add,size: 20, color: AppColors.kPrimaryColor,)),
                  iconAndText(AppStrings.transfer, const Icon(Icons.send,size: 20, color: AppColors.kPrimaryColor,)),
                  iconAndText(AppStrings.withdraw, const Icon(FontAwesome.exchange,size: 20, color: AppColors.kPrimaryColor,)),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


Widget middleText() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.balance,
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.kWhiteText
          ),
        ),
        Text(
          AppStrings.cashBack,
          textAlign: TextAlign.start,
          style: GoogleFonts.poppins(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.kWhiteText
          ),
        )
      ],
    ),
  );
}

Widget iconAndText(String text, Icon icon) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          decoration: const BoxDecoration(
            color: AppColors.kContainer,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            shape: BoxShape.rectangle
          ),
          child: icon,
        ),
        const HeightSpacer(height: 5),
        ReusableText(
            text: text,
            style: appStyle(
                12.sp,
                FontWeight.normal,
                AppColors.kWhiteText
            )
        )
      ],
    ),
  );
}
