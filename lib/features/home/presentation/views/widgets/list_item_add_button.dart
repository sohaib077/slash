import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_fade_transition.dart';

class ListItemAddButton extends StatelessWidget {
  const ListItemAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeTransition(
      primary: SvgPicture.asset(
        AssetsData.addIcon,
        width: 22.res(context),
      ),
      secondary: SvgPicture.asset(
        AssetsData.addedIcon,
        width: 22.res(context),
      ),
    );
  }
}
