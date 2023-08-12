import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class LoginHeaderText extends StatelessWidget {
  const LoginHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReusableText(
                text: AppStrings.login,
                style: appStyle(
                    20,
                    FontWeight.bold,
                    AppColors.kBlackText
                )
            ),
            const HeightSpacer(height: 6),
            Text(
              AppStrings.loginSubTitle,
              textAlign: TextAlign.left,
              overflow: TextOverflow.clip,
              style: appStyle(
                  12,
                  FontWeight.normal,
                  AppColors.kDarkIcon
              ),
            )
          ],
        ),
    );
  }
}
