import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 24, left: 24),
      child: Column(
        children: [
          HomeAppBar(),
        ],
      ),
    );
  }
}
