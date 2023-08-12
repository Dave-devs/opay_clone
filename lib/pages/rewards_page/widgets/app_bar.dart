import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.text, required this.icon, required this.color, required this.size});

  final String text;
  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReusableText(
              text: text,
              style: appStyle(34.sp, FontWeight.w700, AppColors.kBlackText)
          ),
          Icon(icon, color: color, size: size,)
        ],
      ),
    );
  }
}
