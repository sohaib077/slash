import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';
import 'package:slash/features/home/presentation/views/widgets/bottom_navigation_tab_animted_container.dart';
import 'package:slash/features/home/presentation/views/widgets/buttom_navigation_bar_tap_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is ChangeTaBValueState;
      },
      builder: (context, state) {
        return IntrinsicHeight(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavigationBarTabItem(
                      tapIcon: AssetsData.homeIcon,
                      tapName: "Home",
                      index: 0,
                    ),
                    BottomNavigationBarTabItem(
                      tapIcon: AssetsData.heartIcon,
                      tapName: "Favorites",
                      index: 1,
                    ),
                    BottomNavigationBarTabItem(
                      tapIcon: AssetsData.cartIcon,
                      tapName: "My Cart",
                      index: 2,
                    ),
                    BottomNavigationBarTabItem(
                      tapIcon: AssetsData.profileIcon,
                      tapName: "Profile",
                      index: 3,
                    ),
                  ],
                ),
              ),
              BottomNavigationTabAnimatedContainer(
                currentTabIndex: HomeCubit.get(context).currentTab,
              ),
            ],
          ),
        );
      },
    );
  }
}
