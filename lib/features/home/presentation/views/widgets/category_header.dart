import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/shared_methods.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/generated/l10n.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.title,
    this.topPadding,
  });

  final String title;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsetsDirectional.only(
          start: Constants.horizontalPadding,
          end: Constants.horizontalPadding,
          top: topPadding ?? 25,
          bottom: 10),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.semiBold22Style(context),
          ),
          const Spacer(),
          Text(
            S.of(context).see_all,
            style: Styles.medium14Style(context),
          ),
          const SizedBox(width: 10),
          Container(
            decoration: BoxDecoration(
                color: AppColors.gray300,
                borderRadius: BorderRadius.circular(4)),
            padding: const EdgeInsets.all(2),
            child: Transform.rotate(
              angle: isArabic(context) ? pi / 2 : -pi / 2,
              child: SvgPicture.asset(
                AssetsData.arrowIcon,
                width: 15.res(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
