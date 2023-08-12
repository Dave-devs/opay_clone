import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/app_colors/app_colors.dart';

class AlternativeLoginOptions extends StatelessWidget {
  const AlternativeLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () { },
              child: optionContainer('assets/images/google.png')
          ),
          GestureDetector(
              onTap: () { },
              child: optionContainer('assets/images/facebook.png')
          ),
          GestureDetector(
              onTap: () { },
              child: optionContainer('assets/images/twitter.png')
          ),
          GestureDetector(
              onTap: () { },
              child: optionContainer('assets/images/whatsapp.png')
          ),
        ],
      ),
    );
  }
}

Widget optionContainer(String imagePath) {
  return Container(
    height: 50.h,
    width: 50.w,
    decoration: BoxDecoration(
      color: Colors.black12,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      border: Border.all(width: 1, color: AppColors.kIconDisable),
      shape: BoxShape.rectangle
    ),
    child: Image.asset(
        imagePath,
        width: 25.w,
        height: 25.h,
    ),
  );
}
