import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/app_colors/app_colors.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/app_size.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';

class CashbackVoucherWidget extends StatelessWidget {
  const CashbackVoucherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10,top: 10,bottom: 20),
      width: AppSize.kWidth,
      height: 105.h,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: AppColors.kPrimAcctColor
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cashBackRow(),
              HeightSpacer(height: 5.h),
              balanceRow()
            ],
          ),
          WidthSpacer(width: 40.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              voucher(),
              HeightSpacer(height: 5.h),
              zeroAndIcon()
            ],
          )
        ],
      ),
    );
  }
}

Widget cashBackRow() {
  return Container(
    child: Row(
      children: [
        const Icon(
          Icons.monetization_on_rounded,
          color: AppColors.kTextYellow,
        ),
        WidthSpacer(width: 5.w),
        ReusableText(
            text: AppStrings.rCashback,
            style: appStyle(
                18.sp,
                FontWeight.w400,
                AppColors.kIconDisable
            )
        ),
        WidthSpacer(width: 5.w),
        const Icon(
          Icons.help_outline,
          color: AppColors.kIconDisable,
          size: 14,
        ),
      ],
    ),
  );
}

Widget balanceRow() {
  return Container(
    child: Row(
      children: [
        const Icon(
          Icons.attach_money_outlined,
          color: AppColors.kPrimaryColor,
        ),
        WidthSpacer(width: 5.w),
        ReusableText(
            text: AppStrings.rAmount,
            style: appStyle(
                24.sp,
                FontWeight.w600,
                AppColors.kPrimaryColor
            )
        ),
        WidthSpacer(width: 5.w),
        const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.kDarkIcon,
          size: 14,
        ),
      ],
    ),
  );
}

Widget voucher() {
  return Container(
    child: ReusableText(
      text: AppStrings.rVoucher,
      style: appStyle(
          18.sp,
          FontWeight.w400,
          AppColors.kIconDisable)
    ),
  );
}

Widget zeroAndIcon() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReusableText(
            text: '0',
            style: appStyle(
                30.sp,
                FontWeight.w600,
                AppColors.kBlackText
            )
        ),
        WidthSpacer(width: 30.w),
        const Icon(
          Icons.arrow_forward_ios,
          color: AppColors.kDarkIcon,
          size: 14,
        )
      ],
    ),
  );
}
