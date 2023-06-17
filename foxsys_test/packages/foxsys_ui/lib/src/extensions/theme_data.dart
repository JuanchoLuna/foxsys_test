import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/material.dart';

///Extension on Themedata that must be added to return the correct asset
extension ThemeX on ThemeData {
  ///Returns the correct FOXSYSIcon based on the current theme
  FOXSYSIcon get icons {
    final isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      return FOXSYSIconsDark();
    } else {
      return  FOXSYSIconsLight();
    }
  }
}
