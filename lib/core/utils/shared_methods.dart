import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shimmer/shimmer.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:swipe_back_detector/swipe_back_detector.dart';

import 'assets_data.dart';

// ============================ N A V I G A T I O N S ======================================

void navigateTo(BuildContext context, Widget page,
    {double x = 1.0, double y = 0.0, bool fade = false}) {
  Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final begin = Offset(x, y);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SwipeBackDetector(
          child: fade
              ? FadeTransition(
                  opacity: animation,
                  child: child,
                )
              : SlideTransition(
                  position: animation.drive(tween),
                  child: child,
                ),
        );
      },
    ),
  );
}

void navigateAndFinish(BuildContext context, widget,
        {double x = 1.0, double y = 0.0, bool fade = false}) =>
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => widget,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final begin = Offset(x, y);
            const end = Offset.zero;
            const curve = Curves.ease;
            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SwipeBackDetector(
              child: fade
                  ? FadeTransition(
                      opacity: animation,
                      child: child,
                    )
                  : SlideTransition(
                      position: animation.drive(tween),
                      child: child,
                    ),
            );
          },
        ), (route) {
      return false;
    });

// =============================================================================================


void unfocus(context) {
  FocusScope.of(context).unfocus();
}

// =============================================================================================


Widget cachedImage(
        {required String image,
        double? iconSize,
        double? width,
        double? height,
        Color? color,
        Color? errorColor,
        BorderRadiusGeometry? borderRadiusGeometry,
        BoxFit? fit,
        Widget? child}) =>
    ClipRRect(
      borderRadius: borderRadiusGeometry ?? BorderRadius.zero,
      child: CachedNetworkImage(
        placeholderFadeInDuration: const Duration(milliseconds: 100),
        fadeOutDuration: const Duration(milliseconds: 100),
        fadeInDuration: const Duration(milliseconds: 100),
        imageUrl: image,
        width: width,
        fit: fit ?? BoxFit.cover,
        placeholder: (context, url ) => shimmerLoadingContainer(
            width: width,
            height: height,
            color: color,
            borderRadiusGeometry: borderRadiusGeometry,
            child: child),
        errorWidget: (context, url, error) => Container(
          color: errorColor ?? AppColors.gray600.withOpacity(0.4),
          child: Lottie.asset(
            AssetsData.notFoundLottie,
            // repeat: false,
            animate: false,
            fit: fit ?? BoxFit.contain,
            height: height,
            width: width,
          ),
        ),

      ),
    );

Shimmer shimmerLoadingContainer(
    {double? width,
    double? height,
    Color? color,
    BorderRadiusGeometry? borderRadiusGeometry,
    Widget? child}) {
  return Shimmer.fromColors(
    baseColor: Colors.grey,
    highlightColor: Colors.grey.shade400,
    child: child ??
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color ?? AppColors.gray600,
            borderRadius:
                borderRadiusGeometry ?? BorderRadius.circular(8),
          ),
        ),
  );
}
