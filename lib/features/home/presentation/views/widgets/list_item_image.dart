import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/presentation/views/widgets/list_item_fav_button.dart';

class ListItemImage extends StatelessWidget {
  const ListItemImage({
    super.key, required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        SizedBox(
          height: (SizeConfig.screenHeight * .15),
          width: double.infinity,
          child: AspectRatio(
            aspectRatio: 124 / 116,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(Constants.borderRadius),
                child: Image.asset(image,
                    fit: BoxFit.cover)),
          ),
        ),
         const ListItemFavButton(),
      ],
    );
  }
}
