import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import 'package:opay_clone/pages/cards_page/widgets/cards_widgets.dart';
import '../../common/app_colors/app_colors.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBG,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: ReusableText(text: 'Cards', style: appStyle(25.sp, FontWeight.bold, AppColors.kBlackText),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: ReusableText(text: 'Q&A', style: appStyle(20.sp, FontWeight.normal, AppColors.kPrimaryColor),),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ReusableText(
                text: 'Physical Card',
                style: appStyle(18.sp, FontWeight.w500, AppColors.kBlackText),
              ),
              WidthSpacer(width: 40.w),
              ReusableText(
                text: 'Virtual Card',
                style: appStyle(18.sp, FontWeight.w500, AppColors.kIconDisable),
              ),
            ],
          ),

          HeightSpacer(height: 10.h),

          Center(
            child: CreditCardWidget(
                cardNumber: '5199 1107 7788 7115',
                expiryDate: '03/23',
                cardHolderName: 'John William Doe',
                cvvCode: '861',
                showBackView: false,
                bankName: 'OPay',
                cardType: CardType.visa,
                onCreditCardWidgetChange: (opay) { },
                labelCardHolder: 'John Doe',
                isChipVisible: true,
                isHolderNameVisible: true,
                chipColor: AppColors.kTextYellow,
            ),
          ),
          HeightSpacer(height: 10.h),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.h),
            child: freeUsageTile(
                iconData: Icons.add_card,
                text: 'Free Usage',
                subText: 'Withdraw at 0 card maintenance fee monthly.'
            ),
          ),
          HeightSpacer(height: 20.h),

          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.h),
            child: freeUsageTile(
                iconData: Icons.add_card, text: 'Earn',
                subText: 'Flexible Spending with good annual interest.'
            ),
          ),

          HeightSpacer(height: 20.h),

          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.h),
            child: freeUsageTile(
                iconData: Icons.add_card,
                text: 'Security', subText: 'CBN licensed, NDIC insurance.'
            ),
          ),

          HeightSpacer(height: 40.h),

          Container(
            width: 330.w,
            height: 55.h,
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(15.w),
            ),
            child: Center(
              child: ReusableText(
                text: 'Click for home delivery',
                style: appStyle(16.sp, FontWeight.w500, AppColors.kWhiteText),
              ),
            )
          ),

          HeightSpacer(height: 30.h),

          Container(
            width: 330.w,
            height: 55.h,
            decoration: BoxDecoration(
              color: AppColors.kWhiteText,
              borderRadius: BorderRadius.circular(15.w),
              border: Border.all(color: AppColors.kPrimaryColor)
            ),
            child: Center(
              child: ReusableText(
                text: 'Pick up from nearby merchants',
                style: appStyle(16.sp, FontWeight.w500, AppColors.kPrimaryColor),
              ),
            )
          ),
        ],
      ),
    );
  }
}
