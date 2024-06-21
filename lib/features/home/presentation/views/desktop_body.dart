import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/features/home/presentation/views/widgets/best_selling_section.dart';
import 'package:slash/features/home/presentation/views/widgets/categories_section.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:slash/features/home/presentation/views/widgets/new_arrival_section.dart';
import 'package:slash/features/home/presentation/views/widgets/recommended_section.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(8),
          bottomStart: Radius.circular(8),
        ),
      ),
      child: const SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomCarouselSlider(),
            CategoriesSection(),
            BestSellingSection(),
            NewArrivalSection(),
            RecommendedSection(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
