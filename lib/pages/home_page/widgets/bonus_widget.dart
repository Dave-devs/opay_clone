import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';

class GiftBonusWidget extends StatelessWidget {
  const GiftBonusWidget({super.key,
    required this.text1,
    required this.text2,
    required this.imagePath,
    required this.width,
    required this.widthColor,
    this.color
  });

  final String text1;
  final String text2;
  final String imagePath;
  final double width;
  final Color widthColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      width: 340.w,
      height: 70.h,
      decoration: const BoxDecoration(
        color: AppColors.kContainer,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              border: Border.all(width: width, color: widthColor)
            ),
            child: CircleAvatar(
              child: Image.network(imagePath)
            )
          ),
          WidthSpacer(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  text1,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: AppColors.kBlackText
                  ),
              ),
              HeightSpacer(height: 6.h),
              Text(
                  text2,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 13.sp,
                    color: Colors.grey.withOpacity(0.8)
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

