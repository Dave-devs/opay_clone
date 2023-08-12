import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import '../../../common/utils/app_size.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

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
                child: Image.asset('assets/images/seamless_payment.png'),
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
                    text: AppStrings.kOnboardingTitle1,
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
                    AppStrings.kOnboardingSubTitle1,
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
