import 'package:flutter/material.dart';
import 'package:slash/core/utils/size_config.dart';

import 'app_colors.dart';
import 'assets_data.dart';

abstract class Styles {
  static TextStyle regular14Style(context, {double? size}) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: size ?? 14),
      fontWeight: FontWeight.w400,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle regular16Style(context, {double? size}) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: size ?? 16),
      fontWeight: FontWeight.w400,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle medium14Style(context, {double? size}) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: size ?? 14),
      fontWeight: FontWeight.w500,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle semiBold22Style(context, {double? size}) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: size ?? 22),
      fontWeight: FontWeight.w600,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle bold16Style(context, {double? size}) {
    return TextStyle(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: size ?? 16),
      fontWeight: FontWeight.w700,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }
}