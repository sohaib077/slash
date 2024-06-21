import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/features/home/data/models/data_model.dart';
import 'package:slash/features/home/presentation/views/widgets/category_header.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_list_view.dart';

import 'custom_grid_view.dart';

class ListedDataSection extends StatelessWidget {
  const ListedDataSection({
    super.key,
    this.isDesktop = false,
    required this.title,
    required this.list,
  });

  final bool isDesktop;
  final String title;
  final List<DataModel> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryHeader(
          title: title,
        ),
        if (!isDesktop) CustomListView(list: list),
        if (isDesktop)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomGridView(list: list),
          ),
      ],
    );
  }
}
