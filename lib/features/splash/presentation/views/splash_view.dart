import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:slash/features/splash/presentation/views/widgets/custom_animated_text.dart';
import 'package:slash/features/splash/presentation/views/widgets/dot.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAnimatedText(text: "S", index: 0),
            CustomAnimatedText(text: "L", index: 1),
            CustomAnimatedText(text: "A", index: 2),
            CustomAnimatedText(text: "S", index: 3),
            CustomAnimatedText(text: "H", index: 4),
            Dot()

          ],
        ),
      ),
    );
  }
}
