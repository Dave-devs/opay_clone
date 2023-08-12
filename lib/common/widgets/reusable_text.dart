import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, required this.style});

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: style,
        maxLines: 1,
        textAlign: TextAlign.left,
        overflow: TextOverflow.fade,
        softWrap: false,
    );
  }
}

TextStyle appStyle(double size, FontWeight weight, Color color) {
  return GoogleFonts.poppins(
      fontWeight: weight,
      fontSize: size.sp,
      color: color
  );
}