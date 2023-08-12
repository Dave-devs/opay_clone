import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import '../../../common/app_colors/app_colors.dart';
import '../../../common/app_strings/app_strings.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
      width: 330.w,
      height: 200.h,
      decoration: const BoxDecoration(
        color: AppColors.kContainer,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                service(const Icon(Ionicons.call, color: AppColors.kPrimaryColor, size: 20,), AppStrings.airTime),
                service(const Icon(Icons.router, color: AppColors.kPrimaryColor, size: 20,), AppStrings.data),
                service(const Icon(Ionicons.baseball, color: AppColors.kPrimaryColor, size: 20,), AppStrings.betting),
                service(const Icon(Ionicons.tv, color: AppColors.kPrimaryColor, size: 20,), AppStrings.tv),
              ],
          ),
          HeightSpacer(height: 30.h),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                service(const Icon(Ionicons.bulb, color: AppColors.kPrimaryColor, size: 20,), AppStrings.lights),
                service(const Icon(Ionicons.wifi, color: AppColors.kPrimaryColor, size: 20,), AppStrings.internet),
                service(const Icon(Ionicons.school, color: AppColors.kPrimaryColor, size: 20,), AppStrings.schoolExam),
                service(const Icon(Ionicons.arrow_forward_circle, color: AppColors.kPrimaryColor, size: 20,), AppStrings.more),
              ],
            ),
        ],
      ),
    );
  }
}

Widget service(Icon icon, String text) {
  return Container(
    child: Column(
      children: [
        Container(
          width: 35.w,
          height: 35.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: AppColors.kPrimAcctColor
          ),
          child: icon,
        ),
        HeightSpacer(height: 5.h),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey.withOpacity(0.9)
          ),
        )
      ],
    ),
  );
}
