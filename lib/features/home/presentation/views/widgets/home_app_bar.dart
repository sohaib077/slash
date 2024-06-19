import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/views/widgets/notification_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Slash.",
          style: Styles.bold16Style(context, size: 20),
        ),
        const Spacer(),
        SvgPicture.asset(
          AssetsData.locationIcon,
          width:20.res(context),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nasr City",
              style: Styles.regular14Style(context),
            ),
            Text(
              "Cairo",
              style: Styles.bold16Style(context, size: 14),
            ),
          ],
        ),
        const SizedBox(width: 8),
        SvgPicture.asset(
          AssetsData.arrowIcon,
          width:20.res(context),
        ),
        const Spacer(),
        const NotificationButton(),
      ],
    );
  }
}
