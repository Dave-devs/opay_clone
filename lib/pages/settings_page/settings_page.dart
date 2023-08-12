import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/common/utils/app_size.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import 'package:opay_clone/pages/settings_page/widgets/setting_tile.dart';
import '../../common/app_colors/app_colors.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBG,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.kPrimaryColor,
        automaticallyImplyLeading: false,
        leading: Container(
          width: 15.w,
          height: 15.h,
          margin: EdgeInsets.all(10.w),
          decoration: BoxDecoration(
            color: AppColors.kWhiteText,
            borderRadius: BorderRadius.circular(40),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/hero_pic.jpg')
            )
          ),

        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ReusableText(
              text: 'Hi, John',
              style: appStyle(18.sp, FontWeight.w700, AppColors.kWhiteText),
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: AppColors.kWhiteText,),
            onPressed: () {  },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 150.h,
            padding: EdgeInsets.all(10.w),
            width: AppSize.kWidth,
            decoration: const BoxDecoration(
              color: AppColors.kPrimaryColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ReusableText(
                    text: "Total Balance",
                    style: appStyle(16.sp, FontWeight.w500, AppColors.kWhiteText)
                ),
                ReusableText(
                    text: "\$2,000.00",
                    style: appStyle(16.sp, FontWeight.w300, AppColors.kWhiteText)
                ),
                Container(
                  padding: EdgeInsets.all(4.w),
                  decoration: BoxDecoration(
                    color: AppColors.kPrimAcctColor,
                    borderRadius: BorderRadius.circular(20.w),
                  ),
                  child: ReusableText(
                    text: '& Cashback ...',
                    style: appStyle(13.sp, FontWeight.w300, AppColors.kBlackText),
                  ),
                )
              ],
            ),
          ),

          HeightSpacer(height: 10.h),

          Container(
            width: 300.w,
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w,),
            decoration: BoxDecoration(
              color: AppColors.kWhiteText,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                settingsTiles('',text: 'Transaction History',iconData: Icons.event_note, ),
                settingsTiles('View your transaction limits',text: 'Account Limits',iconData: Icons.speed, ),
                settingsTiles('Add payment option',text: 'Bank Card/Account',iconData: Icons.credit_card, ),
                settingsTiles('Receive Payment for your business',text: 'Pay Me',iconData: Icons.payments, ),
              ],
            ),
          ),

          HeightSpacer(height: 5.h),

          Container(
            width: 300.w,
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w,),
            decoration: BoxDecoration(
                color: AppColors.kWhiteText,
                borderRadius: BorderRadius.circular(5)
            ),
            child: Column(
              children: [
                settingsTiles('',text: 'Schedule Payments',iconData: Icons.calendar_month, ),
                settingsTiles('',text: 'OPay USSD',iconData: Icons.call_sharp, ),
                settingsTiles('',text: 'Support',iconData: Icons.support_agent, ),
                settingsTiles('Earn up to \$800 per referral',text: 'Refer Friends',iconData: Icons.flare_outlined, ),
                settingsTiles('',text: 'Report Scam',iconData: Icons.face_retouching_off, ),
                settingsTiles('',text: 'Rate Us',iconData: Icons.star, ),
              ],
            ),
          ),

          HeightSpacer(height: 40.h),
        ],
      ),
    );
  }
}
