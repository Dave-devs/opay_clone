import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  border: Border.all(width: 1.5.w, color: Colors.yellow),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                      offset: Offset(1, 2)
                    )
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/hero_pic.jpg'),
                    fit: BoxFit.fill
                  )
                ),
              ),
              const WidthSpacer(width: 6),
              Text(
                  AppStrings.hello,
                  style: GoogleFonts.poppins(
                      letterSpacing: 0.2,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kBlackText
                  )
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.support_agent_outlined, color: AppColors.kDarkIcon,),
              WidthSpacer(width: 24),
              Icon(Icons.qr_code_scanner_outlined, color: AppColors.kDarkIcon,),
              WidthSpacer(width: 24),
              Icon(Feather.bell, color: AppColors.kDarkIcon,)
            ],
          )
        ],
      ),
    );
  }
}
