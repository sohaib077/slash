import 'package:flutter/material.dart';
import 'package:slash/core/utils/size_config.dart';

import 'app_colors.dart';
import 'assets_data.dart';

abstract class Styles {
  static TextStyle regular14Style(context, {double? size}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: size ?? 14),
      fontWeight: FontWeight.w400,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle regular16Style(context, {double? size}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: size ?? 16),
      fontWeight: FontWeight.w400,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle medium14Style(context, {double? size}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: size ?? 14),
      fontWeight: FontWeight.w500,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle semiBold22Style(context, {double? size}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: size ?? 22),
      fontWeight: FontWeight.w600,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }

  static TextStyle bold16Style(context, {double? size}) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: size ?? 16),
      fontWeight: FontWeight.w700,
      fontFamily: AssetsData.urbanistFontFamily,
      color: AppColors.black,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.5;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 500;
  } else if (width < SizeConfig.desktop) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
