import 'package:flutter/material.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadiusDirectional.only(
          topEnd: Radius.circular(8),
          bottomEnd: Radius.circular(8),
        ),
      ),
      child: Column(),
    );
  }
}
