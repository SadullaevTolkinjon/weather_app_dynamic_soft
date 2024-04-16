import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget? lmobile;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    this.lmobile,
  });
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
  static bool isWeb(BuildContext context) => kIsWeb;
  static bool currentIsMobile(BuildContext context) =>
      (Theme.of(context).platform == TargetPlatform.android ||
              Theme.of(context).platform == TargetPlatform.iOS)
          ? true
          : false;
  static bool currentIsDesktop(BuildContext context) =>
      Platform.isLinux || Platform.isMacOS || Platform.isWindows;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        } else if (constraints.maxWidth >= 650) {
          return tablet;
        } else if (constraints.maxWidth >= 375) {
          return mobile;
        } else {
          return lmobile ?? mobile;
        }
      },
    );
  }
}
