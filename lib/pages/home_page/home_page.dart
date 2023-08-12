import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/auth_repository/auth_repository.dart';
import 'package:opay_clone/common/app_strings/app_strings.dart';
import 'package:opay_clone/common/utils/spacers.dart';
import 'package:opay_clone/pages/home_page/widgets/bonus_widget.dart';
import 'package:opay_clone/pages/home_page/widgets/earn_per_referral.dart';
import 'package:opay_clone/pages/home_page/widgets/green_card_widget.dart';
import 'package:opay_clone/pages/home_page/widgets/header_widget.dart';
import 'package:opay_clone/pages/home_page/widgets/services_widget.dart';
import 'package:opay_clone/pages/login_page/login_page.dart';
import '../../auth_repository/bloc/auth_bloc.dart';
import '../../common/app_colors/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final authBloc = AuthBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kBG,
        appBar: AppBar(
          elevation: 0,
          surfaceTintColor: AppColors.kBG,
          backgroundColor: Colors.transparent,
          title: const HeaderWidget(),
          centerTitle: true,
        ),
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return Container(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        HeightSpacer(height: 20.h),
                        const GreenCardWidget(),
                        HeightSpacer(height: 18.h),
                        GiftBonusWidget(
                          text1: AppStrings.earn300Bonus,
                          text2: AppStrings.getYourPay,
                          imagePath: "assets/images/megaphone.png",
                          width: 0,
                          widthColor: Colors.transparent,
                        ),
                        HeightSpacer(height: 18.h),
                        const ServicesWidget(),
                        HeightSpacer(height: 18.h),
                        const EarnPerReferralWidget(),
                        HeightSpacer(height: 18.h),
                        GiftBonusWidget(
                            text1: AppStrings.referAndEarn,
                            text2: AppStrings.earnPerReferral,
                            imagePath: 'assets/images/megaphone.png',
                            width: 1.0,
                            widthColor: AppColors.kPrimaryColor,
                            color: AppColors.kPrimAcctColor
                        ),
                        HeightSpacer(height: 18.h),
                        GiftBonusWidget(
                          text1: AppStrings.predictAndWin,
                          text2: AppStrings.freelyPredict,
                          imagePath: 'assets/images/1xbet.png',
                          width: 0,
                          widthColor: Colors.transparent,
                        ),
                        HeightSpacer(height: 80.h),
                      ],
                    )
                )
            );
          },
        )
    );
  }
}