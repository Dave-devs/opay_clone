import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({super.key, this.onTap, required this.width, required this.height, this.color1, required this.color2, required this.text});

  final void Function()? onTap;
  final double width;
  final double height;
  final Color? color1;
  final Color color2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: width.w,
        width: height.h,
        decoration: BoxDecoration(
          color: color1,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 1.5, color: color2)
        ),
        child: Center(
          child: ReusableText(
            text: text,
            style: appStyle(18, FontWeight.bold, AppColors.kBlackText),
          ),
        ),
      ),
    );
  }
}
