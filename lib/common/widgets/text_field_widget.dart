import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import '../app_colors/app_colors.dart';
import '../utils/spacers.dart';
//text == null ? TextEditingValue.empty : TextEditingValue(text: text
Widget reusableTextField(
    TextEditingController? controller,
    String headerText,
    String hintText,
    String inputType,
    void Function(String name)? func
    ) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( //Top Text
          headerText,
          textAlign: TextAlign.left,
          style: appStyle(
              16,
              FontWeight.w500,
              AppColors.kBlackText
          ),
        ),

        const HeightSpacer(height: 5),

        Container(
          width: 300,
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(width: 1.3, color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              shape: BoxShape.rectangle
          ),
          child: TextField(
            controller: controller,
            onChanged: (value) {
              func!(value);
            },
            keyboardType: TextInputType.name,
            maxLines: 1,
            minLines: 1,
            textInputAction:
            inputType == 'password' || inputType == 'confirmPassword' ? TextInputAction.done : TextInputAction.next,

            showCursor: true,
            autocorrect: false,
            obscureText:
            inputType == 'password' || inputType == 'confirmPassword' ? true : false,

            style: appStyle(
                14,
                FontWeight.w400,
                AppColors.kBlackText
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w300,
                color: AppColors.kBlackText,
              ),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  )
              ),
              suffixIcon:
              inputType == 'password' || inputType == 'confirmPassword' ? const Icon(Ionicons.lock_closed_outline, size: 20,) : null,
          ),
        )
        )
      ],
    ),
  );
}