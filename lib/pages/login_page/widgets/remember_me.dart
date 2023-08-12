import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';

class RememberMe extends StatefulWidget {
  const RememberMe({super.key});

  @override
  State<RememberMe> createState() => _RememberMeState();
}

class _RememberMeState extends State<RememberMe> {
  bool checkBoxVal = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                onChanged: (bool? value) {
                  if(value != null) {
                    setState(() => checkBoxVal = value);
                  }
                },
                value: checkBoxVal,
                checkColor: AppColors.kWhiteText,
                activeColor: AppColors.kPrimaryColor,
              ),
              Text(
                  AppStrings.rememberMe,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: AppColors.kBlackText,
                    fontSize: 13.sp,
                    letterSpacing: 0.5
                  )
              )
            ],
          ),
          GestureDetector(
            onTap: null,
            child: Text(
                AppStrings.forgotPassword,
                textAlign: TextAlign.end,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: AppColors.kPrimaryColor,
                    fontSize: 13.sp,
                    letterSpacing: 0.4
                )
            ),
          )
        ],
      ),
    );
  }
}
