import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/app_size.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, top: 15.h, right: 0, bottom: 0),
      margin: EdgeInsets.only(left: 10.w, top: 15.h, right: 10, bottom: 0),
      width: AppSize.kWidth,
      height: 145,
      color: AppColors.kPrimAcctColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          firstText(),
          HeightSpacer(height: 10.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  secondText(),
                  thirdText(),
                  HeightSpacer(height: 10.h),
                  button()
                ],
              ),
              WidthSpacer(width: 20.w),
              illustrator()
            ],
          )
        ],
      ),
    );
  }
}

Widget firstText() {
  return Container(
    child: Row(
      children: [
        const Icon(Icons.monetization_on_rounded, size: 20,color: AppColors.kTextYellow),
        WidthSpacer(width: 8.w),
        ReusableText(
          text: AppStrings.rRefer,
          style: appStyle(
            20.sp,
            FontWeight.w600,
            AppColors.kBlackText
          ),
        )
      ],
    ),
  );
}

Widget secondText() {
  return Container(
    child: ReusableText(
      text: AppStrings.rReferSubText1,
      style: appStyle(
        15.sp,
        FontWeight.w500,
        AppColors.kBlackText
      ),
    ),
  );
}

Widget thirdText() {
  return Container(
    child: ReusableText(
      text: AppStrings.rReferSubText2,
      style: appStyle(
        15.sp,
        FontWeight.w500,
        AppColors.kBlackText
      ),
    ),
  );
}

Widget button() {
  return GestureDetector(
    onTap: () {},
    child: Container(
      width: 100.w,
      height: 28.h,
      decoration: const BoxDecoration(
        color: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: AppColors.kPrimaryColor,
            blurRadius: 0,
            spreadRadius: 3,
            offset: Offset(0, 2)
          )
        ]
      ),
      child: Center(
        child: ReusableText(
          text: AppStrings.referAndEarn,
          style: appStyle(
              14.sp,
              FontWeight.w500,
              AppColors.kContainer
          ),
        ),
      ),
    ),
  );
}

Widget illustrator() {
  return Column(
    children: [
      Container(
        width: 177.w,
        height: 86.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/bonus.png')
          )
        ),
      ),
    ],
  );
}
