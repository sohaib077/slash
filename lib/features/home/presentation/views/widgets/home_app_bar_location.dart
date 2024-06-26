import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/generated/l10n.dart';

class HomeAppBarLocation extends StatelessWidget {
  const HomeAppBarLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AssetsData.locationIcon,
          width: 20.res(context),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).nasr,
              style: Styles.regular14Style(context),
            ),
            Text(
              S.of(context).cairo,
              style: Styles.bold16Style(context, size: 14),
            ),
          ],
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          AssetsData.arrowIcon,
          width: 20.res(context),
        ),
      ],
    );
  }
}
