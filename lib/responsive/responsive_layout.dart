import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileUi;
  final Widget tabletUi;
  final Widget smallTabletUi;
  final Widget desktopUi;
  const ResponsiveLayout(
      {super.key,
      required this.mobileUi,
      required this.tabletUi,
      required this.smallTabletUi,
      required this.desktopUi});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 750) {
        kDebugMode ? print("mobileUi") : null;
        return mobileUi;
      } else if (constraints.maxWidth < 1025) {
        kDebugMode ? print("smallTabletUi") : null;
        return smallTabletUi;
      } else if (constraints.maxWidth < 1300) {
        kDebugMode ? print("tabletUi") : null;
        return tabletUi;
      } else {
        kDebugMode ? print("desktopUi") : null;
        return desktopUi;
      }
    });
  }
}
