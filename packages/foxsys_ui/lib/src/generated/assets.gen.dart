/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Vector.svg
  SvgGenImage get vector => const SvgGenImage('assets/icons/Vector.svg');

  /// File path: assets/icons/back_icon.svg
  SvgGenImage get backIcon => const SvgGenImage('assets/icons/back_icon.svg');

  /// File path: assets/icons/calendar-clear.svg
  SvgGenImage get calendarClear =>
      const SvgGenImage('assets/icons/calendar-clear.svg');

  /// File path: assets/icons/calendar_selected.svg
  SvgGenImage get calendarSelected =>
      const SvgGenImage('assets/icons/calendar_selected.svg');

  /// File path: assets/icons/chat_selected.svg
  SvgGenImage get chatSelected =>
      const SvgGenImage('assets/icons/chat_selected.svg');

  /// File path: assets/icons/chatbubble.svg
  SvgGenImage get chatbubble =>
      const SvgGenImage('assets/icons/chatbubble.svg');

  /// File path: assets/icons/cube.svg
  SvgGenImage get cube => const SvgGenImage('assets/icons/cube.svg');

  /// File path: assets/icons/cube_selected.svg
  SvgGenImage get cubeSelected =>
      const SvgGenImage('assets/icons/cube_selected.svg');

  /// File path: assets/icons/email_outline.svg
  SvgGenImage get emailOutline =>
      const SvgGenImage('assets/icons/email_outline.svg');

  /// File path: assets/icons/exit.svg
  SvgGenImage get exit => const SvgGenImage('assets/icons/exit.svg');

  /// File path: assets/icons/foxsysLogo.svg
  SvgGenImage get foxsysLogo =>
      const SvgGenImage('assets/icons/foxsysLogo.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/home_selected.svg
  SvgGenImage get homeSelected =>
      const SvgGenImage('assets/icons/home_selected.svg');

  /// File path: assets/icons/key_selected.svg
  SvgGenImage get keySelected =>
      const SvgGenImage('assets/icons/key_selected.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        vector,
        backIcon,
        calendarClear,
        calendarSelected,
        chatSelected,
        chatbubble,
        cube,
        cubeSelected,
        emailOutline,
        exit,
        foxsysLogo,
        home,
        homeSelected,
        keySelected,
        settings
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/calendar_selected.png
  AssetGenImage get calendarSelected =>
      const AssetGenImage('assets/images/calendar_selected.png');

  /// File path: assets/images/chat_selected.png
  AssetGenImage get chatSelected =>
      const AssetGenImage('assets/images/chat_selected.png');

  /// File path: assets/images/cube.png
  AssetGenImage get cube => const AssetGenImage('assets/images/cube.png');

  /// File path: assets/images/exit.png
  AssetGenImage get exit => const AssetGenImage('assets/images/exit.png');

  /// File path: assets/images/home_selected.png
  AssetGenImage get homeSelected =>
      const AssetGenImage('assets/images/home_selected.png');

  /// File path: assets/images/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');

  /// File path: assets/images/key_selected.png
  AssetGenImage get keySelected =>
      const AssetGenImage('assets/images/key_selected.png');

  /// File path: assets/images/profile_image.jpg
  AssetGenImage get profileImage =>
      const AssetGenImage('assets/images/profile_image.jpg');

  /// File path: assets/images/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/images/settings.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        calendarSelected,
        chatSelected,
        cube,
        exit,
        homeSelected,
        icon,
        keySelected,
        profileImage,
        settings
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
