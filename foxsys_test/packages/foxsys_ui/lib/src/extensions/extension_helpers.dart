import 'package:flutter/material.dart';
import 'package:foxsys_ui/src/constants/constants.dart';

extension ScreenMeasurements on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  bool get isMobile =>
      MediaQuery.of(this).size.width <= tabletMaxWidthBreakpoint;
  bool get isDesktop =>
      MediaQuery.of(this).size.width > tabletMaxWidthBreakpoint;
}