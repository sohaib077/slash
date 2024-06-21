import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash/features/home/presentation/views/desktop_body.dart';
import 'package:slash/features/home/presentation/views/desktop_drawer.dart';
import 'package:slash/features/home/presentation/views/widgets/desktop_home_app_bar.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DesktopHomeAppBar(),
        SizedBox(height: 16),
        Expanded(
          child: Row(
            children: [
              Expanded(flex: 1, child: DesktopDrawer()),
              SizedBox(width: 24),
              Expanded(flex: 4, child: DesktopBody()),
            ],
          ),
        ),
      ],
    );
  }
}
