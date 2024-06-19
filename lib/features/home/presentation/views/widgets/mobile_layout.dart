import 'package:flutter/material.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/home_search_bar.dart';

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
          const HomeAppBar(),
          const SizedBox(height: 20),
          HomeSearchBar()
        ],
      ),
    );
  }
}
