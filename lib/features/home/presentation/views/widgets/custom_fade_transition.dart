import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomFadeTransition extends StatefulWidget {
  const CustomFadeTransition({
    super.key,
    required this.primary,
    required this.secondary,
  });

  final Widget primary;
  final Widget secondary;

  @override
  State<CustomFadeTransition> createState() => _CustomFadeTransitionState();
}

class _CustomFadeTransitionState extends State<CustomFadeTransition> {
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          opacity = opacity == 1 ? 0 : 1;
        });
      },
      child: Stack(
        children: [
          widget.primary,
          AnimatedOpacity(
            opacity: opacity,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: widget.secondary,
          ),
        ],
      ),
    );
  }
}
