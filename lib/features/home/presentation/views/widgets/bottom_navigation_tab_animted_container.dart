import 'package:flutter/material.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/shared_methods.dart';
import 'package:slash/core/utils/size_config.dart';

class BottomNavigationTabAnimatedContainer extends StatelessWidget {
  const BottomNavigationTabAnimatedContainer({
    super.key,
    required this.currentTabIndex,
  });

  final int currentTabIndex;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      top: 0,
      left: isArabic(context)
          ? (SizeConfig.screenWidth / 4) * (3 - currentTabIndex)
          : (SizeConfig.screenWidth / 4) * currentTabIndex,
      curve: Curves.easeInOut,
      child: Container(
        width: SizeConfig.screenWidth / 4,
        height: 7,
        decoration: const BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
      ),
    );
  }
}
