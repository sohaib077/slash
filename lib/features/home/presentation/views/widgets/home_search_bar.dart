import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/constants.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/features/home/presentation/views/widgets/CustomTextFormField.dart';
import 'package:slash/generated/l10n.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: Constants.horizontalPadding),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                controller: TextEditingController(),
                hintText: S.of(context).search,
                prefix: AssetsData.searchIcon,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.textFormFieldFilledColor.withOpacity(0.52),
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsetsDirectional.all(14),
              child: SvgPicture.asset(AssetsData.filterIcon,
                  width: 18.res(context)),
            ),
          ],
        ),
      ),
    );
  }
}
