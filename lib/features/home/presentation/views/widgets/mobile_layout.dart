import 'package:flutter/material.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/home_search_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        HomeAppBar(),
        SizedBox(height: 20),
        HomeSearchBar(),
        SizedBox(height: 20),
        CustomCarouselSlider(),
      ],
    );
  }
}
