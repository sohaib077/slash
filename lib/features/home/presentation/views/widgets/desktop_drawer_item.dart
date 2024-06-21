import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';

class DesktopDrawerItem extends StatelessWidget {
  const DesktopDrawerItem({
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
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          HomeCubit.get(context).changeTab(index);
        },
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 16, end: 0),
          child: Row(
            children: [
              SvgPicture.asset(
                tapIcon,
                width: 27.res(context),
                colorFilter: selected
                    ? const ColorFilter.mode(AppColors.black, BlendMode.srcIn)
                    : null,
              ),
              const SizedBox(width: 10),
              Text(
                tapName,
                style: selected
                    ? Styles.bold16Style(context, size: 14)
                    : Styles.regular14Style(context),
              ),
              const Spacer(),
              if (selected)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 8,
                    // height: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadiusDirectional.only(
                        topStart: Radius.circular(16),
                        bottomStart: Radius.circular(16),
                      ),
                    ),
                  ),
                ).animate().scaleY(  begin: 0.2 ,curve: Curves.easeInOut, duration: 500.ms),
            ],
          ),
        ),
      ),
    );
  }
}
