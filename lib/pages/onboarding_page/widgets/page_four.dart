import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/utils/app_size.dart';
import 'package:opay_clone/pages/bottom_nav_page/bottom_nav_page.dart';
import '../../../common/app_colors/app_colors.dart';
import '../../../common/app_strings/app_strings.dart';
import '../../../common/utils/spacers.dart';
import '../../../common/widgets/reusable_text.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.kWidth,
      height: AppSize.kHeight,
      color: AppColors.kBG,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset('assets/images/virtual_cards.png'),
            ),

          const HeightSpacer(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ReusableText(
                    text: AppStrings.kOnboardingTitle4,
                    style: appStyle(
                        20,
                        FontWeight.w600,
                        AppColors.kPrimaryColor
                    )
                ),
              ),
              const HeightSpacer(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  AppStrings.kOnboardingSubTitle4,
                  style: appStyle(
                      14,
                      FontWeight.normal,
                      AppColors.kIconDisable
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const HeightSpacer(height: 50),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const BottomNavPage())
              );
            },
            child: Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(width: 1.5, color: AppColors.kPrimaryColor),
                borderRadius: const BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: ReusableText(
                  text: AppStrings.getStarted,
                  style: appStyle(
                      16, FontWeight.bold, AppColors.kPrimaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
