import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:opay_clone/common/widgets/reusable_text.dart';
import 'package:opay_clone/pages/onboarding_page/widgets/page_four.dart';
import 'package:opay_clone/pages/onboarding_page/widgets/page_one.dart';
import 'package:opay_clone/pages/onboarding_page/widgets/page_three.dart';
import 'package:opay_clone/pages/onboarding_page/widgets/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../common/app_colors/app_colors.dart';
import 'bloc/onboarding_bloc.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.kBG,
          appBar: AppBar(elevation: 0,backgroundColor: AppColors.kBG,),
          body: Stack(
            children: [
              PageView(
                onPageChanged: (index) {
                  state.page = index;
                  BlocProvider.of<OnboardingBloc>(context).add(OnboardingEvent());
                },
                physics: const AlwaysScrollableScrollPhysics(),
                controller: pageController,
                children: const [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                  PageFour()
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(microseconds: 600),
                                curve: Curves.ease
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Ionicons.chevron_forward_circle,
                                color: AppColors.kPrimaryColor,
                                size: 24,
                              ),
                              //const WidthSpacer(width: 4),
                              ReusableText(
                                text: 'Skip',
                                style: appStyle(
                                    14,
                                    FontWeight.w500,
                                    AppColors.kPrimaryColor
                                ),
                              )
                            ],
                          )
                      ),
                      GestureDetector(
                        onTap: () {
                          pageController.jumpToPage(state.page);
                        },
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 4,
                          effect: ExpandingDotsEffect(
                              dotColor: AppColors.kDarkIcon,
                              activeDotColor: AppColors.kPrimaryColor,
                              radius: 5,
                              dotHeight: 5.h,
                              dotWidth: 6.w,
                              spacing: 6
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
