import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/data/models/data_model.dart';
import 'package:slash/features/home/presentation/views/widgets/category_header.dart';
import 'package:slash/features/home/presentation/views/widgets/grid_item.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item.dart';
import 'package:slash/generated/l10n.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.list,
  });

  final List<DataModel> list;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      height: ((SizeConfig.screenHeight * .22) + 65.res(context)) * 2,
      child: MasonryGridView.count(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(start: 24),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 30,
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GridItem(
            listItem: list[index],
          );
        },
      ),
    );
  }
}
