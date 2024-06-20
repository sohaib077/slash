import 'package:flutter/material.dart';
import 'package:slash/features/home/presentation/views/widgets/best_selling_section.dart';
import 'package:slash/features/home/presentation/views/widgets/categories_section.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/home_search_bar.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 15),
          HomeAppBar(),
          SizedBox(height: 20),
          HomeSearchBar(),
          SizedBox(height: 20),
          CustomCarouselSlider(),
          CategoriesSection(),
          BestSellingSection(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
