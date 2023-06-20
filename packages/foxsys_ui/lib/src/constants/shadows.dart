import 'package:flutter/material.dart';

class FOXSYSShadows {
  /// The light soft box shadow.
  static BoxShadow lightHard = BoxShadow(
    color: const Color(0xFF304FBE).withOpacity(0.16),
    offset: const Offset(0, 8),
    blurRadius: 16,
    spreadRadius: 0,
  );

  /// The light card box shadow.
  static BoxShadow lightCard = BoxShadow(
    color: const Color(0xFF304FBE).withOpacity(0.04),
    offset: const Offset(0, 4),
    blurRadius: 4,
    spreadRadius: 0,
  );

  /// The light top bar box shadow.
  static BoxShadow lightTopBar = BoxShadow(
    color: const Color(0xFF304FBE).withOpacity(0.08),
    offset: const Offset(0, 4),
    blurRadius: 16,
    spreadRadius: 0,
  );

  /// The light bottom bar box shadow.
  static BoxShadow lightBottomBar = BoxShadow(
    color: const Color(0xFF304FBE).withOpacity(0.08),
    offset: const Offset(0, -4),
    blurRadius: 16,
    spreadRadius: 0,
  );

  /// The dark soft box shadow.

  /// The dark simple box shadow
  static BoxShadow darkSimple = BoxShadow(
    color: const Color(0xFF000520).withOpacity(0.24),
    offset: const Offset(0, 2),
    blurRadius: 4,
    spreadRadius: 0,
  );

  /// The dark card box shadow.
  static BoxShadow darkCard = BoxShadow(
    color: const Color(0xFF000F58).withOpacity(0.24),
    offset: const Offset(0, 2),
    blurRadius: 24,
    spreadRadius: 0,
  );

  /// The dark top bar box shadow.
  static BoxShadow darkTopBar = BoxShadow(
    color: const Color(0xFF000520).withOpacity(0.40),
    offset: const Offset(0, 4),
    blurRadius: 24,
    spreadRadius: 0,
  );

  /// The dark bottom bar box shadow.

  static BoxShadow darkBottomBar = BoxShadow(
    color: const Color(0xFF000520).withOpacity(0.40),
    offset: const Offset(0, -4),
    blurRadius: 24,
    spreadRadius: 0,
  );
}
