import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash/core/utils/app_colors.dart';
import 'package:slash/core/utils/assets_data.dart';
import 'package:slash/core/utils/extensions.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/core/utils/size_config.dart';
import 'package:slash/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.obscureText,
    this.keyboardType = TextInputType.text,
    this.prefix,
  });

  final TextEditingController? controller;
  final String hintText;
  final bool? obscureText;
  final TextInputType keyboardType;
  final String? prefix;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
    decoration: BoxDecoration(
      color: AppColors.textFormFieldFilledColor.withOpacity(.52),
      borderRadius: BorderRadius.circular(8),
    ),

      child: Center(
        child: TextFormField(
          keyboardType: keyboardType,
          controller: controller,
          style: Styles.medium14Style(context, size: 15),
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 12),

            hintText: hintText,
            hintStyle: Styles.regular14Style(context)
                .copyWith(color: const Color(0xff969696)),
            prefixIcon: prefix == null ? null : Padding(
              padding: const EdgeInsetsDirectional.only(start: 18, end: 12),
              child:
                  SvgPicture.asset(prefix!, width: 20.res(context)),
            ),
            // prefixIconConstraints: BoxConstraints(maxWidth: 30.res(context)),
            border: InputBorder.none,
            // filled: true,
            // fillColor: AppColors.textFormFieldFilledColor.withOpacity(.52),
          ),
        ),
      ),
    );
  }
}
