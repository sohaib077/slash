import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/app_colors.dart';
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadiusDirectional.only(
          topStart: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.07),
            offset: const Offset(-1, -.5),
            blurRadius: 5,
          ),
        ],
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
