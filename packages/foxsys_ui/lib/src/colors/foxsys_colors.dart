import 'package:flutter/material.dart';

abstract class FOXSYSColors {
  /// Transparent
  static const Color transparent = Color(0x00000000);

  /// The grey primary color and swatch.
  static const Color grey = Colors.grey;

  /// The light grey color.
  static const Color lightGrey = Color(0xFFEEEEEE);

  /// The liver color.
  static const Color liver = Color(0xFF4D4D4D);

  /// The dark aqua color.
  static const Color darkAqua = Color(0xFF00677F);

  /// The sky blue color.
  static const Color skyBlue = Color(0xFF0175C2);

  /// The ocean blue color.
  static const Color oceanBlue = Color(0xFF02569B);

  /// The light blue accent color.
  static const Color lightBlue = Color(0xFFB3E5FC);

  /// The light blue accent color.
  static const Color lightBlue200 = Color(0xFFB3E5FC);

  /// The crystal blue color.
  static const Color crystalBlue = Color(0xFF55ACEE);

  /// The light surface dress color.
  static const Color surface = Color(0xFFEBF2F7);

  /// The pale sky color.
  static const Color paleSky = Color(0xFF73777F);

  /// The bright grey color.
  static const Color brightGrey = Color(0xFFEAEAEA);

  /// The on-background color.
  static const Color onBackground = Color(0xFF1A1A1A);

  /// The primary container color.
  static const Color primaryContainer = Color(0xFFB1EBFF);

  /// The red wine color.
  static const Color redWine = Color(0xFF9A031E);

  /// The modal background color.
  static const Color modalBackground = Color(0xFFEBF2F7);

  /// The medium emphasis primary color.
  static const Color mediumEmphasisPrimary = Color(0xBDFFFFFF);

  /// The medium emphasis surface color.
  static const Color mediumEmphasisSurface = Color(0x99000000);

  /// The border outline color.
  static const Color borderOutline = Color(0x33000000);

  /// The light outline color.
  static const Color outlineLight = Color(0x33000000);

  /// The secondary color of application.
  static const MaterialColor secondary = MaterialColor(0xFF963F6E, <int, Color>{
    50: Color(0xFFFFECF3),
    100: Color(0xFFFFD8E9),
    200: Color(0xFFFFAFD6),
    300: Color(0xFFF28ABE),
    400: Color(0xFFD371A3),
    500: Color(0xFFB55788),
    600: Color(0xFF963F6E),
    700: Color(0xFF7A2756),
    800: Color(0xFF5F0F40),
    900: Color(0xFF3D0026),
  });

  /// App blue's color.

  /// The blue bright of the application.
  static const Color blueBright = Color.fromARGB(255, 173, 225, 251);

  /// The blue of the application.
  static const Color blue = Color(0xFF3289DA);

  /// The dark blue of the application.
  static const Color darkBlue = Color(0xFF194F9C);

  /// The blue bright gradient of the application.
  static const blueBrightGradient = LinearGradient(
    colors: [
      Color(0xFFADE1FB),
      Color(0xFF62AEE8),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// The blue dark gradient of the application.
  static const blueDarkGradient = LinearGradient(
    colors: [
      Color(0xFF3289DA),
      Color(0xFF194F9C),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// App orange's color.

  /// Bright orange color
  static const Color orangeBright = Color(0xFFFFE4B3);

  /// Orange color
  static const Color orange = Color(0xFFFF9F43);

  /// Dark orange color
  static const Color orangeDark = Color(0xFFB75B21);

  /// Light orange gradient
  static const orangeLightGradient = LinearGradient(
    colors: [
      Color(0xFFFFDFAA),
      Color(0xFFFFBE71),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Dark orange gradient
  static const orangeDarkGradient = LinearGradient(
    colors: [
      Color(0xFFFF9F43),
      Color(0xFFB75B21),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// App red's color.

  /// Bright red color
  static const Color redBright = Color(0xFFF8A999);

  /// Red color
  static const Color red = Color(0xFFEA5455);

  /// Dark red color
  static const Color redDark = Color(0xFFA82A41);

  /// Light red gradient
  static const redLightGradient = LinearGradient(
    colors: [
      Color(0xFFF8A999),
      Color(0xFFF2877D),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Dark red gradient
  static const redDarkGradient = LinearGradient(
    colors: [
      Color(0xFFEA5455),
      Color(0xFFA82A41),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// App green's color.

  /// Bright green color
  static const Color greenBright = Color(0xFFA9F9B5);

  /// Green color
  static const Color green = Color(0xFF81D67E);

  /// Dark green color
  static const Color greenDark = Color(0xFF25A859);

  /// Light green gradient
  static const greenLightGradient = LinearGradient(
    colors: [
      Color(0xFFA9F9B5),
      Color(0xFF58DD86),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Dark green gradient
  static const greenDarkGradient = LinearGradient(
    colors: [
      Color(0xFF28C76F),
      Color(0xFF148F63),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// App purple's color.

  /// Bright purple color
  static const Color purpleBright = Color(0xFF97C4FF);

  /// Purple color
  static const Color purple = Color(0xFF304FBE);

  /// Dark purple color
  static const Color purpleDark = Color(0xFF182B88);

  /// Light purple gradient
  static const purpleBrightGradient = LinearGradient(
    colors: [
      Color(0xFF97C4FF),
      Color(0xFF5E7CD8),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Dark purple gradient
  static const purpleDarkGradient = LinearGradient(
    colors: [
      Color(0xFF304FBE),
      Color(0xFF182B88),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// App white's color.

  /// White color
  static const Color white = Color(0xFFFFFFFF);

  /// Black color
  static const Color black = Color(0xFF000000);

  /// Light 1 color
  static const Color light1 = Color(0xFFF7F7FB);

  /// Light 2 color
  static const Color light2 = Color(0xFFE4E7F8);

  /// Light 3 color
  static const Color light3 = Color(0xFFCCCFE5);

  /// Light 4 color
  static const Color light4 = Color(0xFFA7AABD);

  /// 10% opacity color for light shades
  static const Color lightOpacity10 = Color(0x1A000000);

  /// App dark's color.

  /// Dark 1 color
  static const Color dark1 = Color(0xFF14141B);

  /// Dark 2 color
  static const Color dark2 = Color(0xFF292933);

  /// Dark 3 color
  static const Color dark3 = Color(0xFF34343E);

  /// Dark 4 color
  static const Color dark4 = Color(0xFF5D5D6D);
}
