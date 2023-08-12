import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:opay_clone/pages/bottom_nav_page/bloc/bottom_nav_bloc.dart';
import 'package:opay_clone/pages/bottom_nav_page/bottom_nav_page.dart';
import 'package:opay_clone/pages/finance_page/bloc/finance_bloc.dart';
import 'package:opay_clone/pages/finance_page/finance_page.dart';
import 'package:opay_clone/pages/home_page/bloc/home_bloc.dart';
import 'package:opay_clone/pages/home_page/home_page.dart';
import 'package:opay_clone/pages/login_page/login_page.dart';
import 'package:opay_clone/pages/onboarding_page/bloc/onboarding_bloc.dart';
import 'package:opay_clone/pages/onboarding_page/onboarding_page.dart';
import 'package:opay_clone/pages/register_page/register_page.dart';
import 'package:opay_clone/pages/rewards_page/bloc/reward_bloc.dart';
import 'package:opay_clone/pages/rewards_page/rewads_page.dart';
import 'package:opay_clone/pages/settings_page/settings_page.dart';
import '../auth_repository/bloc/auth_bloc.dart';
import '../pages/cards_page/cards_page.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => OnboardingBloc()),
        BlocProvider(create: (BuildContext context) => AuthBloc()),
        BlocProvider(create: (BuildContext context) => BottomNavBloc()),
        BlocProvider(create: (BuildContext context) => HomeBloc()),
        BlocProvider(create: (BuildContext context) => RewardBloc()),
        BlocProvider(create: (BuildContext context) => FinanceBloc()),
        BlocProvider(create: (BuildContext context) => RewardBloc()),
        // BlocProvider(create: (BuildContext context) => SettingBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 825),
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        builder: (context, child) =>
        MaterialApp(
          title: 'Opay Clone App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.light,
          home: const OnboardingPage(),
          routes: {
            //'/': (context) => const OnboardingPage(),
            '/login_page': (context) => const LoginPage(),
            '/register_page': (context) => const RegisterPage(),
            '/bottom_nav_page': (context) => const BottomNavPage(),
            '/home_page': (context) => const HomePage(),
            '/reward_page': (context) => const RewardPage(),
            '/finance_page': (context) => const FinancePage(),
            '/cards_page': (context) => const CardPage(),
            '/settings_page': (context) => const SettingsPage(),
          },
        ),
      ),
    );
  }
}