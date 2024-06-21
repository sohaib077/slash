import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar_location.dart';
import 'package:slash/features/home/presentation/views/widgets/home_search_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/notification_button.dart';
import 'package:slash/generated/l10n.dart';

class DesktopHomeAppBar extends StatelessWidget {
  const DesktopHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
              color: AppColors.black.withOpacity(0.1),
              offset: const Offset(0, 1)),
        ],
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.horizontalPadding, vertical: 15),
      child: Row(
        children: [
          Text(
            S.of(context).slash,
            style: Styles.bold16Style(context, size: 20),
          ),
          const SizedBox(width: 16),
          const HomeAppBarLocation(),
          const SizedBox(width: 8),
          const Expanded(flex: 1, child: HomeSearchBar()),
          const SizedBox(width: 8),
          const NotificationButton(),
        ],
      ),
    );
  }
}
