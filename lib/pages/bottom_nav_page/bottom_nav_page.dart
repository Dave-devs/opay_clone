import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:opay_clone/pages/cards_page/cards_page.dart';
import 'package:opay_clone/pages/finance_page/finance_page.dart';
import 'package:opay_clone/pages/home_page/home_page.dart';
import 'package:opay_clone/pages/rewards_page/rewads_page.dart';
import 'package:opay_clone/pages/settings_page/settings_page.dart';
import '../../common/app_colors/app_colors.dart';
import 'bloc/bottom_nav_bloc.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  // final int currentIndex = 0;

  final List<Widget> pageList = [
    const HomePage(),
    const RewardPage(),
    const FinancePage(),
    const CardPage(),
    const SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.kBG,
          body: pageList[state.index],
          bottomNavigationBar: Theme(
            data: ThemeData(canvasColor: AppColors.kBG),
            child: BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  state.index = index;
                  context.read<BottomNavBloc>().add(NavigateEvent(index));
                });
              },
              currentIndex: state.index,
              elevation: 0,
              backgroundColor: AppColors.kIconDisable.withOpacity(0.2),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.kPrimaryColor,
              unselectedItemColor: AppColors.kIconDisable,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              iconSize: 20,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined,),
                  activeIcon: Icon(Icons.home,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.diamond_outlined,),
                  activeIcon: Icon(Icons.diamond,),
                  label: 'Rewards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.insert_chart_outlined,),
                  activeIcon: Icon(Icons.insert_chart,),
                  label: 'Finance',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.credit_card_outlined,),
                  activeIcon: Icon(Icons.credit_card,),
                  label: 'Cards',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline,),
                  activeIcon: Icon(Icons.person,),
                  label: 'Me',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
