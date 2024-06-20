import 'package:flutter/material.dart';
import 'package:slash/features/home/presentation/views/widgets/category_header.dart';
import 'package:slash/generated/l10n.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CategoryHeader(title: S.of(context).best_selling);
  }
}
