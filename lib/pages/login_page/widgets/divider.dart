import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Divider(height: 1.0, thickness: 1.5, color: Colors.grey,),
          const WidthSpacer(width: 5),
          Text('or', style: appStyle(12, FontWeight.w200, AppColors.kBlackText),),
          const WidthSpacer(width: 5),
          const Divider(height: 1.0, thickness: 1.5, color: Colors.grey,),
        ],
      ),
    );
  }
}
