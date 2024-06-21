import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';
import 'package:slash/features/home/presentation/views/widgets/desktop_drawer_item.dart';
import 'package:slash/generated/l10n.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is ChangeTaBValueState;
      },
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadiusDirectional.only(
              topEnd: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.07),
                offset: const Offset(1, -.5),
                blurRadius: 5,
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              DesktopDrawerItem(
                tapIcon: AssetsData.homeIcon,
                tapName: S.of(context).home,
                index: 0,
              ),
              DesktopDrawerItem(
                tapIcon: AssetsData.heartIcon,
                tapName: S.of(context).favorites,
                index: 1,
              ),
              DesktopDrawerItem(
                tapIcon: AssetsData.cartIcon,
                tapName: S.of(context).my_cart,
                index: 2,
              ),
              const Spacer(flex: 6),
              DesktopDrawerItem(
                tapIcon: AssetsData.profileIcon,
                tapName: S.of(context).profile,
                index: 3,
              ),
            ],
          ),
        );
      },
    );
  }
}
