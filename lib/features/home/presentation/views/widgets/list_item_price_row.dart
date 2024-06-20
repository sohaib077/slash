import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/data/models/data_model.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item_add_button.dart';

class ListItemPriceRow extends StatelessWidget {
  const ListItemPriceRow({
    super.key,
    required this.listItem,
  });

  final DataModel listItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(
          "EGP ${listItem.price}",
          style: Styles.bold16Style(context),
          overflow: TextOverflow.ellipsis,
        )),
        const ListItemAddButton(),
      ],
    );
  }
}
