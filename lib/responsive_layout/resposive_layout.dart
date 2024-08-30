import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/device/desktop_screen.dart';
import 'package:responsive_design_assignment/device/mobile_screen.dart';
import 'package:responsive_design_assignment/device/tablet_screen.dart';
import 'package:responsive_design_assignment/utils/daimentions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveLayout(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return MobileScreen();
        } else if (constraints.maxWidth < tabletWidth) {
          return TabletScreen();
        } else {
          return DesktopScreen();
        }
      },
    );
  }
}
