import 'package:flutter/material.dart';
import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/services.dart';

class FOXSYSTheme {

  /// Light Theme example based on Material 2 Design.
  ThemeData get lightTheme {
    return ThemeData(
      primaryColor: FOXSYSColors.skyBlue,
      canvasColor: _backgroundColor,
      scaffoldBackgroundColor: _backgroundColor,
      iconTheme: _lightIconTheme,
      appBarTheme: _lightAppBarTheme,
      dividerTheme: _dividerTheme,
      textTheme: _lightTextTheme,
      buttonTheme: _buttonTheme,
      splashColor: FOXSYSColors.transparent,
      elevatedButtonTheme: _elevatedButtonTheme,
      textButtonTheme: _textButtonTheme,
      colorScheme: _lightColorScheme,
      bottomSheetTheme: _lightBottomSheetTheme,
      listTileTheme: _listTileTheme,
      switchTheme: _switchTheme,
      progressIndicatorTheme: _progressIndicatorTheme,
      tabBarTheme: _tabBarTheme,
      bottomNavigationBarTheme: _bottomAppBarTheme,
      chipTheme: _chipTheme,
      dividerColor: FOXSYSColors.grey,
      outlinedButtonTheme: _lightOutlinedButtonTheme,
    );
  }

  /// Dark Theme example based on Material 2 Design.
  ThemeData get darkTheme => lightTheme.copyWith(
        chipTheme: _darkChipTheme,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: FOXSYSColors.black,
        colorScheme: _darkColorScheme,
        appBarTheme: _darkAppBarTheme,
        disabledColor: FOXSYSColors.white.withOpacity(0.5),
        textTheme: _darkTextTheme,
        unselectedWidgetColor: FOXSYSColors.lightGrey,
        iconTheme: _darkIconTheme,
        bottomSheetTheme: _darkBottomSheetTheme,
        outlinedButtonTheme: _darkOutlinedButtonTheme,
        textButtonTheme: _darkTextButtonTheme,
      );

  /// Returns the correct color based on the current theme.
  ColorScheme get _lightColorScheme {
    return ColorScheme.light(
      primary: FOXSYSColors.skyBlue,
      primaryContainer: FOXSYSColors.lightBlue200,
      onPrimaryContainer: FOXSYSColors.oceanBlue,
      secondary: FOXSYSColors.paleSky,
      onSecondary: FOXSYSColors.white,
      secondaryContainer: FOXSYSColors.lightBlue200,
      onSecondaryContainer: FOXSYSColors.oceanBlue,
      tertiary: FOXSYSColors.secondary.shade700,
      onTertiary: FOXSYSColors.white,
      tertiaryContainer: FOXSYSColors.secondary.shade300,
      onTertiaryContainer: FOXSYSColors.secondary.shade700,
      error: FOXSYSColors.red,
      errorContainer: FOXSYSColors.red,
      onErrorContainer: FOXSYSColors.redWine,
      background: _backgroundColor,
      onBackground: FOXSYSColors.onBackground,
      surfaceVariant: FOXSYSColors.surface,
      onSurfaceVariant: FOXSYSColors.grey,
      inversePrimary: FOXSYSColors.crystalBlue,
    );
  }

  /// Returns the correct color based on the current theme.
  ColorScheme get _darkColorScheme => _lightColorScheme.copyWith(
        background: FOXSYSColors.black,
        onBackground: FOXSYSColors.white,
        surface: FOXSYSColors.black,
        onSurface: FOXSYSColors.lightGrey,
        primary: FOXSYSColors.blue,
        onPrimary: FOXSYSColors.oceanBlue,
        primaryContainer: FOXSYSColors.oceanBlue,
        onPrimaryContainer: FOXSYSColors.lightBlue200,
        secondary: FOXSYSColors.paleSky,
        onSecondary: FOXSYSColors.lightGrey,
        secondaryContainer: FOXSYSColors.liver,
        onSecondaryContainer: FOXSYSColors.brightGrey,
      );

  /// Returns the correct background color based on the current theme.
  Color get _backgroundColor => FOXSYSColors.white;

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _lightAppBarTheme {
    return AppBarTheme(
      iconTheme: _lightIconTheme,
      titleTextStyle: _lightTextTheme.titleMedium,
      elevation: 0,
      toolbarHeight: 64,
      backgroundColor: FOXSYSColors.white,
      toolbarTextStyle: _lightTextTheme.titleLarge,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  /// Returns the correct [AppBarTheme] based on the current theme.
  AppBarTheme get _darkAppBarTheme {
    return _lightAppBarTheme.copyWith(
      backgroundColor: FOXSYSColors.grey,
      iconTheme: _darkIconTheme,
      toolbarTextStyle: _darkTextTheme.titleLarge,
      titleTextStyle: _darkTextTheme.titleMedium,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _lightIconTheme {
    return const IconThemeData(
      color: FOXSYSColors.black,
    );
  }

  /// Returns the correct [IconThemeData] based on the current theme.
  IconThemeData get _darkIconTheme {
    return const IconThemeData(
      color: FOXSYSColors.white,
    );
  }

  /// Returns the correct [DividerThemeData] based on the current theme.
  DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: FOXSYSColors.outlineLight,
      space: FOXSYSSpacing.lg,
      thickness: FOXSYSSpacing.xxxs,
      indent: FOXSYSSpacing.lg,
      endIndent: FOXSYSSpacing.lg,
    );
  }

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _lightTextTheme => lightUITextTheme;

  /// Returns the correct [TextTheme] based on the current theme.
  TextTheme get _darkTextTheme {
    return _lightTextTheme.apply(
      bodyColor: FOXSYSColors.white,
      displayColor: FOXSYSColors.white,
      decorationColor: FOXSYSColors.white,
    );
  }

  /// The UI text theme based on [FOXSYSTextStyle].
  static final lightUITextTheme = TextTheme(
    displayLarge: FOXSYSTextStyle.headline1,
    displayMedium: FOXSYSTextStyle.headline2,
    displaySmall: FOXSYSTextStyle.headline3,
    titleMedium: FOXSYSTextStyle.subtitle1,
    titleSmall: FOXSYSTextStyle.subtitle2,
    bodyLarge: FOXSYSTextStyle.bodyText1,
    bodyMedium: FOXSYSTextStyle.bodyText2,
    labelLarge: FOXSYSTextStyle.button,
    bodySmall: FOXSYSTextStyle.caption,
    labelSmall: FOXSYSTextStyle.overline,
  ).apply(
    bodyColor: FOXSYSColors.black,
    displayColor: FOXSYSColors.black,
    decorationColor: FOXSYSColors.black,
  );

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: FOXSYSColors.secondary.shade300,
      disabledColor: _backgroundColor,
      selectedColor: FOXSYSColors.secondary.shade700,
      secondarySelectedColor: FOXSYSColors.secondary.shade700,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      labelStyle: FOXSYSTextStyle.button.copyWith(color: FOXSYSColors.black),
      secondaryLabelStyle:
          FOXSYSTextStyle.labelSmall.copyWith(color: FOXSYSColors.white),
      brightness: Brightness.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: const BorderSide(),
      ),
    );
  }

  /// Returns the correct [ChipThemeData] based on the current theme.
  ChipThemeData get _darkChipTheme {
    return _chipTheme.copyWith(
      backgroundColor: FOXSYSColors.white,
      disabledColor: _backgroundColor,
      selectedColor: FOXSYSColors.secondary.shade700,
      secondarySelectedColor: FOXSYSColors.secondary.shade700,
      labelStyle: FOXSYSTextStyle.button.copyWith(
        color: FOXSYSColors.secondary.shade700,
      ),
      secondaryLabelStyle: FOXSYSTextStyle.labelSmall.copyWith(
        color: FOXSYSColors.black,
      ),
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: FOXSYSColors.white, width: 2),
        borderRadius: BorderRadius.circular(22),
      ),
    );
  }

  /// Returns the correct [ButtonThemeData] based on the current theme.
  ButtonThemeData get _buttonTheme {
    return ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(FOXSYSSpacing.sm),
      ),
      padding: const EdgeInsets.symmetric(vertical: FOXSYSSpacing.lg),
      buttonColor: FOXSYSColors.blue,
      disabledColor: FOXSYSColors.lightGrey,
      height: 48,
      minWidth: 48,
    );
  }

  /// Returns the correct [ElevatedButtonThemeData] based on the current theme.
  ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        padding: const EdgeInsets.symmetric(vertical: FOXSYSSpacing.lg),
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: FOXSYSFontWeight.bold,
        ),
        backgroundColor: FOXSYSColors.blue,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: FOXSYSFontWeight.light,
        ),
        foregroundColor: FOXSYSColors.black,
      ),
    );
  }

  /// Returns the correct [TextButtonThemeData] based on the current theme.
  TextButtonThemeData get _darkTextButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: _lightTextTheme.labelLarge?.copyWith(
          fontWeight: FOXSYSFontWeight.light,
        ),
        foregroundColor: FOXSYSColors.white,
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _lightBottomSheetTheme {
    return const BottomSheetThemeData(
      backgroundColor: FOXSYSColors.modalBackground,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(FOXSYSSpacing.lg),
          topRight: Radius.circular(FOXSYSSpacing.lg),
        ),
      ),
    );
  }

  /// Returns the correct [BottomSheetThemeData] based on the current theme.
  BottomSheetThemeData get _darkBottomSheetTheme {
    return _lightBottomSheetTheme.copyWith(
      backgroundColor: FOXSYSColors.grey,
    );
  }

  /// Returns the correct [ListTileThemeData] based on the current theme.
  ListTileThemeData get _listTileTheme {
    return const ListTileThemeData(
      iconColor: FOXSYSColors.onBackground,
      contentPadding: EdgeInsets.all(FOXSYSSpacing.lg),
    );
  }

  /// Returns the correct [SwitchThemeData] based on the current theme.
  SwitchThemeData get _switchTheme {
    return SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return FOXSYSColors.darkAqua;
        }
        return FOXSYSColors.black;
      }),
      trackColor:
          MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return FOXSYSColors.primaryContainer;
        }
        return FOXSYSColors.paleSky;
      }),
    );
  }

  /// Returns the correct [ProgressIndicatorThemeData] based on the current
  /// theme.
  ProgressIndicatorThemeData get _progressIndicatorTheme {
    return const ProgressIndicatorThemeData(
      color: FOXSYSColors.darkAqua,
      circularTrackColor: FOXSYSColors.borderOutline,
    );
  }

  /// Returns the correct [TabBarTheme] based on the current theme.
  TabBarTheme get _tabBarTheme {
    return TabBarTheme(
      labelStyle: FOXSYSTextStyle.button,
      labelColor: FOXSYSColors.darkAqua,
      labelPadding: const EdgeInsets.symmetric(
        horizontal: FOXSYSSpacing.lg,
        vertical: FOXSYSSpacing.md + FOXSYSSpacing.xxs,
      ),
      unselectedLabelStyle: FOXSYSTextStyle.button,
      unselectedLabelColor: FOXSYSColors.mediumEmphasisSurface,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: FOXSYSColors.darkAqua,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
    );
  }

  /// Returns the correct [BottomNavigationBarThemeData] based on the current
  /// theme.
  BottomNavigationBarThemeData get _bottomAppBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: FOXSYSColors.black,
      selectedItemColor: FOXSYSColors.white,
      unselectedItemColor: FOXSYSColors.white.withOpacity(0.74),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _lightOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => FOXSYSColors.white,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: FOXSYSSpacing.xlg,
            vertical: FOXSYSSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? FOXSYSTextStyle.button.copyWith(
                  color: FOXSYSColors.black,
                  fontWeight: FontWeight.w500,
                )
              : FOXSYSTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? FOXSYSColors.black
                      : FOXSYSColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }

  /// Returns the correct [OutlinedButtonThemeData] based on the current theme.
  OutlinedButtonThemeData get _darkOutlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => FOXSYSColors.black,
        ),
        side: MaterialStateProperty.resolveWith(
          (states) => const BorderSide(color: FOXSYSColors.white),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: FOXSYSSpacing.xlg,
            vertical: FOXSYSSpacing.lg,
          ),
        ),
        alignment: Alignment.center,
        textStyle: MaterialStateProperty.resolveWith(
          (states) => states.contains(MaterialState.disabled)
              ? FOXSYSTextStyle.button.copyWith(
                  color: FOXSYSColors.white,
                  fontWeight: FontWeight.w500,
                )
              : FOXSYSTextStyle.button.copyWith(
                  color: states.contains(MaterialState.disabled)
                      ? FOXSYSColors.black
                      : FOXSYSColors.white,
                  fontWeight: FontWeight.w500,
                ),
        ),
      ),
    );
  }

}
