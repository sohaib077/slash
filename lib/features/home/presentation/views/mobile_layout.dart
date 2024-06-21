import 'package:flutter/material.dart';
import 'package:slash/core/utils/dummy_data.dart';
import 'package:slash/features/home/presentation/views/widgets/listed_data_section.dart';
import 'package:slash/features/home/presentation/views/widgets/categories_section.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_carousel_slider.dart';
import 'package:slash/features/home/presentation/views/widgets/home_app_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/home_search_bar.dart';
import 'package:slash/generated/l10n.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 15),
          const HomeAppBar(),
          const SizedBox(height: 20),
          const HomeSearchBar(),
          const SizedBox(height: 20),
          const CustomCarouselSlider(),
          const CategoriesSection(),
          ListedDataSection(
            title: S.of(context).best_selling,
            list: DummyData.bestSellers,
          ),
          ListedDataSection(
            title: S.of(context).new_arrival,
            list: DummyData.newArrival,
          ),
          ListedDataSection(
            title: S.of(context).recommended,
            list: DummyData.recommended,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
