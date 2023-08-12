import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import '../../../common/app_colors/app_colors.dart';
import '../../../common/app_strings/app_strings.dart';
import '../../../common/utils/spacers.dart';
import '../../../common/widgets/reusable_text.dart';

class EarnPerReferralWidget extends StatelessWidget {
  const EarnPerReferralWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: 340.w,
      height: 30.h,
      decoration: const BoxDecoration(
          color: AppColors.kContainer,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
              Icons.volume_up,
              size: 16,
              color: AppColors.kPrimaryColor
          ),
          WidthSpacer(width: 5.w),
          ReusableText(
            text: AppStrings.earnPerReferral,
            style: appStyle(12.sp, FontWeight.w300, AppColors.kBlackText),
          )
        ],
      ),
    );
  }
}
