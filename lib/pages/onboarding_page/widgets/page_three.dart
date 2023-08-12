import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors/app_colors.dart';
import '../../../common/app_strings/app_strings.dart';
import '../../../common/utils/app_size.dart';
import '../../../common/utils/spacers.dart';
import '../../../common/widgets/reusable_text.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.kWidth,
      height: AppSize.kHeight,
      color: AppColors.kBG,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Image.asset('assets/images/savings.png'),
            ),
          ),
          const HeightSpacer(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: ReusableText(
                    text: AppStrings.kOnboardingTitle3,
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
                  AppStrings.kOnboardingSubTitle3,
                  style: appStyle(
                      14,
                      FontWeight.normal,
                      AppColors.kIconDisable
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
