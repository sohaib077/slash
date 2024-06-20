import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_fade_transition.dart';

class ListItemFavButton extends StatelessWidget {
  const ListItemFavButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: CustomFadeTransition(
        primary: CircleAvatar(
          backgroundColor: AppColors.gray100,
          radius: 14.res(context),
          child: SvgPicture.asset(
            AssetsData.favoriteIcon,
            width: 16.res(context),
          ),
        ),
        secondary: CircleAvatar(
          backgroundColor: AppColors.gray100,
          radius: 14.res(context),
          child: SvgPicture.asset(
            AssetsData.heartIcon,
            width: 16.res(context),
            colorFilter: const ColorFilter.mode(AppColors.red, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}
