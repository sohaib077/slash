import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slash/core/utils/styles.dart';

class CustomAnimatedText extends StatelessWidget {
  const CustomAnimatedText({
    super.key,
    required this.text,
    required this.index,
  });

  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    final Duration duration = 500.ms;
    return Text(
      text,
      style: Styles.bold16Style(context, size: 30)
          .copyWith(letterSpacing: 3, fontWeight: FontWeight.w800),
    )
        .animate()
        .fadeIn(
          duration: 50.ms,
          delay: duration * index,
        )
        .slideX(
          begin: 2,
          duration: duration,
          curve: Curves.easeInOut,
        );
  }
}
