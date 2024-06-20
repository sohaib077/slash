import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/data/models/data_model.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item_image.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item_price_row.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.listItem,
  });

  final DataModel listItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 16.res(context)),
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListItemImage(image: listItem.image),
            const SizedBox(height: 5),
            Text(
              listItem.name,
              style: Styles.regular16Style(context),
              overflow: TextOverflow.ellipsis,
            ),
            ListItemPriceRow(listItem: listItem),
          ],
        ),
      ),
    );
  }
}
