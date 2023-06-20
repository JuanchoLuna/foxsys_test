import 'package:foxsys_ui/foxsys_ui.dart';
import 'package:flutter/material.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const SpacingPage());
  }

  @override
  Widget build(BuildContext context) {
    const spacingList = [
      _SpacingItem(spacing: FOXSYSSpacing.xxxs, name: 'xxxs'),
      _SpacingItem(spacing: FOXSYSSpacing.xxs, name: 'xxs'),
      _SpacingItem(spacing: FOXSYSSpacing.xs, name: 'xs'),
      _SpacingItem(spacing: FOXSYSSpacing.sm, name: 'sm'),
      _SpacingItem(spacing: FOXSYSSpacing.md, name: 'md'),
      _SpacingItem(spacing: FOXSYSSpacing.lg, name: 'lg'),
      _SpacingItem(spacing: FOXSYSSpacing.xlg, name: 'xlg'),
      _SpacingItem(spacing: FOXSYSSpacing.xxlg, name: 'xxlg'),
      _SpacingItem(spacing: FOXSYSSpacing.xxxlg, name: 'xxxlg'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Spacing')),
      body: ListView.builder(
        itemCount: spacingList.length,
        itemBuilder: (_, index) => spacingList[index],
      ),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  const _SpacingItem({required this.spacing, required this.name});

  final double spacing;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(FOXSYSSpacing.sm),
      child: Row(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: FOXSYSColors.black,
                width: FOXSYSSpacing.xxs,
                height: FOXSYSSpacing.lg,
              ),
              Container(
                width: spacing,
                height: FOXSYSSpacing.lg,
                color: FOXSYSColors.skyBlue,
              ),
              Container(
                color: FOXSYSColors.black,
                width: FOXSYSSpacing.xxs,
                height: FOXSYSSpacing.lg,
              ),
            ],
          ),
          const SizedBox(width: FOXSYSSpacing.sm),
          Text(name),
        ],
      ),
    );
  }
}
