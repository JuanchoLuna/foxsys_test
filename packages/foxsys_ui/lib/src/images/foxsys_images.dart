import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foxsys_ui/src/generated/assets.gen.dart';

class FoxsysUIImages {
  static Image profile({double? height, double? width}) {
    return Assets.images.profileImage.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image cubeSelected({double? height, double? width}) {
    return Assets.images.cube.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image homeSelected({double? height, double? width}) {
    return Assets.images.homeSelected.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image keySelected({double? height, double? width}) {
    return Assets.images.keySelected.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image calendarSelected({double? height, double? width}) {
    return Assets.images.calendarSelected.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image chatSelected({double? height, double? width}) {
    return Assets.images.chatSelected.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image settings({double? height, double? width}) {
    return Assets.images.settings.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static Image exit({double? height, double? width}) {
    return Assets.images.exit.image(
      height: height,
      width: width,
      fit: BoxFit.fill,
      package: 'foxsys_ui',
    );
  }

  static SvgImage foxsysLogo({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.foxsysLogo.path,
      color: color,
      size: size,
    );
  }

  static SvgImage home({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.home.path,
      color: color,
      size: size,
    );
  }

  static SvgImage backIcon({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.backIcon.path,
      color: color,
      size: size,
    );
  }

  static SvgImage calendarClear({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.calendarClear.path,
      color: color,
      size: size,
    );
  }

  static SvgImage chatBubble({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.chatbubble.path,
      color: color,
      size: size,
    );
  }

  static SvgImage cube({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.cube.path,
      color: color,
      size: size,
    );
  }

  static SvgImage emailOutline({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.emailOutline.path,
      color: color,
      size: size,
    );
  }

  // static SvgImage exit({Size? size, Color? color}) {
  //   return SvgImage(
  //     path: Assets.icons.exit.path,
  //     color: color,
  //     size: size,
  //   );
  // }

  static SvgImage vector({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.vector.path,
      color: color,
      size: size,
    );
  }

  static SvgImage calendar({Size? size, Color? color}) {
    return SvgImage(
      path: Assets.icons.calendarClear.path,
      color: color,
      size: size,
    );
  }
}

class SvgImage extends StatelessWidget {
  const SvgImage({super.key, required this.path, this.color, this.size});
  final String path;
  final Color? color;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      package: 'foxsys_ui',
      color: color,
      width: size?.width,
      height: size?.height,
    );
  }
}
