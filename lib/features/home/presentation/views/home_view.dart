import 'package:flutter/material.dart';
import 'package:slash/core/adaptive_layout_widget.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/presentation/views/widgets/mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const Column(),
        desktopLayout: (context) => const Column(),
      ),
    );
  }
}
