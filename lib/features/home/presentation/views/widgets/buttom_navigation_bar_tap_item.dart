import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';

class BottomNavigationBarTabItem extends StatelessWidget {
  const BottomNavigationBarTabItem({
    super.key,
    required this.tapIcon,
    required this.tapName,
    required this.index,
  });

  final String tapIcon;
  final String tapName;

  final int index;

  @override
  Widget build(BuildContext context) {
    bool selected = HomeCubit.get(context).currentTab == index;
    return GestureDetector(
      onTap: () {
        HomeCubit.get(context).changeTab(index);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 18),
        child: Column(
          children: [
            SvgPicture.asset(
              tapIcon,
              width: SizeConfig.widthBlock * 3,
              colorFilter: selected
                  ? const ColorFilter.mode(AppColors.black, BlendMode.srcIn)
                  : null,
            ),
            const SizedBox(height: 3),
            Text(
              tapName,
              style: selected
                  ? Styles.bold16Style(context, size: 14)
                  : Styles.regular14Style(context),
            ),
          ],
        ),
      ),
    );
  }
}
