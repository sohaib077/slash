import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/styles.dart';
import 'package:slash/features/home/presentation/views/widgets/notification_button.dart';
import 'package:slash/generated/l10n.dart';

import 'home_app_bar_location.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
      child: Row(
        children: [
          Text(
            S.of(context).slash,
            style: Styles.bold16Style(context, size: 20),
          ),
          const Spacer(),
          const HomeAppBarLocation(),
          const Spacer(),
          const NotificationButton(),
        ],
      ),
    );
  }
}
