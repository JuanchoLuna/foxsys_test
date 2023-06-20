import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const ColorsPage());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorItems = <Widget>[
      _ColorTextContainer(
        color: theme.colorScheme.primary,
        name: 'Primary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onPrimary,
        name: 'On primary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.primaryContainer,
        name: 'primary Container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onPrimaryContainer,
        name: 'on primary container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.secondary,
        name: 'Secondary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onSecondary,
        name: 'On Secondary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.secondaryContainer,
        name: 'Secondary container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onSecondaryContainer,
        name: 'On secondary container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.tertiary,
        name: 'Tertiary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onTertiary,
        name: 'On tertiary ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.tertiaryContainer,
        name: 'Tertiary container ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onTertiaryContainer,
        name: 'On tertiary container ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.error,
        name: 'Error ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onError,
        name: 'On error ',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.errorContainer,
        name: 'Error container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onErrorContainer,
        name: 'on error container',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.background,
        name: 'Background',
        textColor: theme.colorScheme.onBackground,
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onBackground,
        name: 'On background',
        textColor: theme.colorScheme.background,
      ),
      _ColorTextContainer(
        color: theme.colorScheme.surface,
        name: 'Surface',
        textColor: theme.colorScheme.onSurface,
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onSurface,
        name: 'On surface',
        textColor: theme.colorScheme.background,
      ),
      _ColorTextContainer(
        color: theme.colorScheme.surfaceVariant,
        name: 'Sureface Variant',
        textColor: FOXSYSColors.black,
      ),
      _ColorTextContainer(
        color: theme.colorScheme.onSurfaceVariant,
        name: 'On Sureface Variant',
      ),
      _ColorTextContainer(
        color: theme.colorScheme.inversePrimary,
        name: 'Inverse primary',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.blueBright,
        name: 'blueBright',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.blue,
        name: 'blue',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.darkBlue,
        name: 'darkBlue',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.orangeBright,
        name: 'orangeBright',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.orange,
        name: 'orange',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.orangeDark,
        name: 'orangeDark',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.redBright,
        name: 'redBright',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.red,
        name: 'red',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.redDark,
        name: 'redDark',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.greenBright,
        name: 'greenBright',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.green,
        name: 'green',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.greenDark,
        name: 'greenDark',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.purpleBright,
        name: 'purpleBright',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.purple,
        name: 'purple',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.purpleDark,
        name: 'purpleDark',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.white,
        name: 'white',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.black,
        name: 'black',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.light1,
        name: 'light1',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.light2,
        name: 'light2',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.light3,
        name: 'light3',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.light4,
        name: 'light4',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.lightOpacity10,
        name: 'lightOpacity10',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.lightOpacity10,
        name: 'lightOpacity10',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.dark1,
        name: 'dark1',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.dark2,
        name: 'dark2',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.dark3,
        name: 'dark3',
      ),
      const _ColorTextContainer(
        color: FOXSYSColors.dark4,
        name: 'dark4',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ColorTheme based on Material Flutter'.toUpperCase(),
        ),
        titleTextStyle: Theme.of(context).appBarTheme.titleTextStyle,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: colorItems.map((colorContainer) {
            return colorContainer;
          }).toList(),
        ),
      ),
    );
  }
}

class _ColorTextContainer extends StatelessWidget {
  const _ColorTextContainer({
    required this.color,
    required this.name,
    this.textColor,
  });

  final Color color;
  final Color? textColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(
        10,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: FOXSYSSpacing.lg * 2,
        vertical: FOXSYSSpacing.xs,
      ),
      width: FOXSYSSpacing.spaceUnit * 100,
      height: FOXSYSSpacing.xxlg,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: theme.colorScheme.onBackground,
        ), // Set border width
        borderRadius: const BorderRadius.all(
          Radius.circular(FOXSYSSpacing.xxs * 5),
        ),
      ),
      child: Center(
        child: Text(
          name.toUpperCase(),
          maxLines: 2,
          style: theme.textTheme.labelLarge?.copyWith(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: textColor ?? FOXSYSColors.black,
          ),
        ),
      ),
    );
  }
}
