import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/adaptive_layout_widget.dart';
import 'package:slash/core/utils/shared_methods.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';
import 'package:slash/features/home/presentation/views/widgets/bottom_navigation_bar.dart';
import 'package:slash/features/home/presentation/views/widgets/mobile_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: GestureDetector(
        onTap: () => unfocus(context),
        child: Scaffold(
          bottomNavigationBar: SizeConfig.screenWidth < SizeConfig.desktop
              ? const CustomBottomNavigationBar()
              : null,
          appBar: AppBar(),
          body: AdaptiveLayout(
            mobileLayout: (context) => const MobileLayout(),
            tabletLayout: (context) => const MobileLayout(),
            desktopLayout: (context) => const Column(),
          ),
        ),
      ),
    );
  }
}
