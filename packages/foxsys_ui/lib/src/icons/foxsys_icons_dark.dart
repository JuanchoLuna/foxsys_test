import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FOXSYSIconsDark extends FOXSYSIcon {
  @override
  SvgPicture backIcon({double? size, Color? color}) {
    return super.backIcon(
      color: color ?? FOXSYSColors.white,
      size: size ?? 14,
    );
  }

  @override
  SvgPicture emailOutline({double? size, Color? color}) {
    return super.emailOutline(
      color: color ?? FOXSYSColors.white,
      size: size ?? 14,
    );
  }

  @override
  SvgPicture foxsysLogo({double? size, Color? color}) {
    return super.foxsysLogo(
      color: color ?? FOXSYSColors.white,
      size: size ?? 14,
    );
  }
}
