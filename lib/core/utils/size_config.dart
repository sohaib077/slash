import 'package:flutter/material.dart';

class SizeConfig {
  static late Size _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double widthBlock;
  static late double heightBlock;

  /// Break points
  static const double desktop = 1200;
  static const double tablet = 800;

  static init(BuildContext context) {
    _mediaQueryData = MediaQuery.sizeOf(context);
    screenWidth = _mediaQueryData.width;
    screenHeight = _mediaQueryData.height;
    // On my emulator the defaultSize = 10 almost
    widthBlock = screenWidth * 0.0275;
    heightBlock = screenHeight * 0.0156;
  }
}
