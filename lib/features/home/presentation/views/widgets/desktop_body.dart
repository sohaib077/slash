import 'package:flutter/material.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/dummy_data.dart';
import 'package:slash/features/home/presentation/views/widgets/listed_data_section.dart';
import 'package:slash/features/home/presentation/views/widgets/categories_section.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:slash/generated/l10n.dart';

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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CustomCarouselSlider(
              screenHeightRation: .2,
            ),
            const CategoriesSection(),
            const SizedBox(height: 20),
            ListedDataSection(
              isDesktop: true,
              title: S.of(context).best_selling,
              list: DummyData.bestSellers,
            ),
            const SizedBox(height: 20),
            ListedDataSection(
              isDesktop: true,
              title: S.of(context).new_arrival,
              list: DummyData.newArrival,
            ),
            const SizedBox(height: 20),
            ListedDataSection(
              isDesktop: true,
              title: S.of(context).recommended,
              list: DummyData.recommended,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
