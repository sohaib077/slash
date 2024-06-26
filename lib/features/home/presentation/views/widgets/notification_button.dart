import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SvgPicture.asset(
          AssetsData.notificationIcon,
          width: 30.res(context),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 1.5, top: 1.5),
          child: CircleAvatar(
            radius: 6.res(context),
            backgroundColor: AppColors.backGround,
            child: CircleAvatar(
              radius: 4.res(context),
              backgroundColor: AppColors.red,
            ),
          ),
        ).animate().scale(delay: 500.ms, duration: 500.ms),
      ],
    ).animate().shake(delay: 1500.ms, duration: 1000.ms , rotation: pi/18 , hz: 5);
  }
}
