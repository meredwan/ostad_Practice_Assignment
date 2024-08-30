import 'package:flutter/material.dart';
import 'package:responsive_design_assignment/device/desktop_screen.dart';
import 'package:responsive_design_assignment/device/mobile_screen.dart';
import 'package:responsive_design_assignment/device/tablet_screen.dart';
import 'package:responsive_design_assignment/responsive_layout/resposive_layout.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepaeState();
}

class _HomepaeState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileScreen(),
      tablet: TabletScreen(),
      desktop: DesktopScreen(),
    );
  }
}
