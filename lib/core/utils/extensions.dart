import 'package:flutter/material.dart';
import 'package:slash/core/utils/size_config.dart';

extension Responsive on num {
  double res(BuildContext context) {
    return SizeConfig.getResponsiveFontSize(context, fontSize: toDouble());
  }
}
