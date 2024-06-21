import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/data/models/data_model.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.list,
  });

  final List<DataModel> list;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SizedBox(
      height: (SizeConfig.screenHeight * .15) + 55.res(context),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsetsDirectional.only(start: 24),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => ListItem(
          listItem: list[index],
        ),
      ),
    );
  }
}
