import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/core/utils/shared_methods.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/features/home/presentation/manager/home_cubit.dart';
import 'package:slash/features/home/presentation/views/widgets/custom_dots_indicator.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider({
    super.key,
    this.screenHeightRation,
  });

  final double? screenHeightRation;

  @override
  Widget build(BuildContext context) {
    const List<String> images = [
      "https://img.freepik.com/free-vector/modern-black-friday-sale-background-with-realistic-3d-red-ribbon_1361-3699.jpg?t=st=1718830203~exp=1718833803~hmac=6dfa4cccb1909347f83c25bad2af317461a8dde327ca66324c06a52588cd3dfa&w=1060",
      "https://img.freepik.com/free-vector/black-friday-super-sale-banner-with-shopping-bag-background_1361-3736.jpg?t=st=1718811789~exp=1718815389~hmac=62c090ba21002a04e5e900063664873ffd1adc24c1fc1935996880fb588a6bd7&w=996",
      "null",
    ];
    return Column(
      children: [
        CarouselSlider(
          items: images.map((image) => _buildItem(image)).toList(),
          options: CarouselOptions(
            scrollPhysics: const BouncingScrollPhysics(),
            height: SizeConfig.screenHeight * (screenHeightRation ?? .15),
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            viewportFraction: .8,
            autoPlay: true,
            onScrolled: (index) {
              HomeCubit.get(context).changeIndex(index!);
            },
          ),
        ),
        const SizedBox(height: 10),
        CustomDotsIndicator(dotsCount: images.length),
      ],
    );
  }

  Widget _buildItem(String image) {
    return cachedImage(
        image: image,
        borderRadiusGeometry: BorderRadius.circular(8),
        width: double.infinity);
  }
}
