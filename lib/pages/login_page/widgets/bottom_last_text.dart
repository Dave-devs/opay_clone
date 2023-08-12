import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key, required this.firstText, required this.secondText});

  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ReusableText(text: firstText, style: appStyle(12, FontWeight.w600, AppColors.kBlackText)),
          const WidthSpacer(width: 5),
          GestureDetector(
            onTap: null,
              child: ReusableText(
                  text: secondText,
                  style: appStyle(
                      12,
                      FontWeight.w600,
                      AppColors.kPrimaryColor)
              )
          ),
        ],
      ),
    );
  }
}
