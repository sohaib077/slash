import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/views/widgets/category_header.dart';
import 'package:slash/generated/l10n.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const List<Map<String, String>> categories = [
      {"Fashion": AssetsData.fashionIcon},
      {"Games": AssetsData.gamesIcon},
      {"Accessories": AssetsData.accessoriesIcon},
      {"Books": AssetsData.booksIcon},
      {"Artifacts": AssetsData.artifactsIcon},
      {"Pets Care": AssetsData.petsIcon},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryHeader(title: S.of(context).categories),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsetsDirectional.only(
              start: Constants.horizontalPadding),
          child: Row(
            children: List.generate(categories.length,
                (index) => _categoryItem(categories[index], index, context)),
          ),
        ),
      ],
    );
  }

  Padding _categoryItem(
      Map<String, String> category, int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.black,
            radius: 27.res(context),
            child: SvgPicture.asset(
              category.values.first,
              width: 28.res(context),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            category.keys.first,
            style: Styles.regular14Style(context , size: 13),
          ),
        ],
      ),
    );
  }
}
