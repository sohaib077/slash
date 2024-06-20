import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slash/core/utils/shared_methods.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/views/home_view.dart';

class Dot extends StatelessWidget {
  const Dot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ".",
      style: Styles.bold16Style(context, size: 30).copyWith(letterSpacing: 3 , fontWeight: FontWeight.w800),
    )
        .animate(
          delay: 500.ms,
          onComplete: (controller) {
            navigateAndFinish(context, const HomeView());
          },
        )
        .fadeIn(
          duration: 50.ms,
          delay: 500.ms * 5,
        )
        .slideY(
          begin: -3,
          duration: 1000.ms,
          curve: Curves.bounceOut,
        );
  }
}
