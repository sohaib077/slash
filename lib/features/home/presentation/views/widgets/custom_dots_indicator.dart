import 'dart:developer';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.dotsCount,
  });

  final int dotsCount;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) {
        return current is ChangeCurrentSliderIndexState;
      },
      builder: (context, state) {
        return DotsIndicator(
          dotsCount: dotsCount,
          position: HomeCubit.get(context).currentSliderIndex,
          decorator: DotsDecorator(
            color: const Color(0xffB8B8B8),
            activeColor: AppColors.black,
            size: Size.fromRadius(4.res(context)),
            activeSize: Size(16.res(context), 4.res(context) * 2),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.res(context))),
          ),
        );
      },
    );
  }
}
