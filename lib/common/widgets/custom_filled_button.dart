import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

Widget customFilledButton(String text,void Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: 320.w,
      height: 40.h,
      decoration: const BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Center(
        child: ReusableText(
          text: text,
          style: appStyle(18, FontWeight.bold, AppColors.kWhiteText),
        ),
      ),
    ),
  );
}