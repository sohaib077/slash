import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/dummy_data.dart';
import 'package:slash/features/home/presentation/views/widgets/category_header.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:slash/generated/l10n.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryHeader(
          title: S.of(context).recommended,
        ),
        const CustomListView(list: DummyData.recommended),
      ],
    );
  }
}
