import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxsys_test/foxsys_home/foxsys_home.dart';
import 'package:foxsys_ui/foxsys_ui.dart';

class FoxsysBottomNavigatorBar extends StatelessWidget {
  const FoxsysBottomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final optionSelected =
        context.select((FoxsysHomeBloc bloc) => bloc.state.optionSelected);

    return Container(
      height: context.screenHeight * 0.1,
      decoration: BoxDecoration(
        color: FOXSYSColors.light1,
        border: Border.all(
          color: FOXSYSColors.light2,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [FOXSYSShadows.lightBottomBar],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: FOXSYSSpacing.xlg),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _BottomBarIcon(
              icon: optionSelected == 0
                  ? FoxsysUIImages.keySelected()
                  : FoxsysUIImages.vector(),
              isSelected: optionSelected == 0,
              onTap: () => context
                  .read<FoxsysHomeBloc>()
                  .add(const FoxsysHomeOptionSelected(0)),
            ),
            _BottomBarIcon(
              icon: optionSelected == 1
                  ? FoxsysUIImages.calendarSelected()
                  : FoxsysUIImages.calendar(),
              isSelected: optionSelected == 1,
              onTap: () => context
                  .read<FoxsysHomeBloc>()
                  .add(const FoxsysHomeOptionSelected(1)),
            ),
            _BottomBarIcon(
              icon: optionSelected == 2
                  ? FoxsysUIImages.homeSelected()
                  : FoxsysUIImages.home(),
              isSelected: optionSelected == 2,
              onTap: () => context
                  .read<FoxsysHomeBloc>()
                  .add(const FoxsysHomeOptionSelected(2)),
            ),
            _BottomBarIcon.chat(
              icon: optionSelected == 3
                  ? FoxsysUIImages.chatSelected()
                  : FoxsysUIImages.chatBubble(),
              isSelected: optionSelected == 3,
              count: 2,
              onTap: () => context
                  .read<FoxsysHomeBloc>()
                  .add(const FoxsysHomeOptionSelected(3)),
            ),
            _BottomBarIcon(
              icon: optionSelected == 4
                  ? FoxsysUIImages.cubeSelected()
                  : FoxsysUIImages.cube(),
              isSelected: optionSelected == 4,
              onTap: () => context
                  .read<FoxsysHomeBloc>()
                  .add(const FoxsysHomeOptionSelected(4)),
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomBarIcon extends StatelessWidget {
  const _BottomBarIcon({
    required this.icon,
    required this.isSelected,
    required this.onTap,
    this.badge,
  });

  factory _BottomBarIcon.chat({
    required Widget icon,
    required int count,
    required bool isSelected,
    required void Function() onTap,
  }) {
    final badge = Badge.count(
      count: count,
      largeSize: FOXSYSSpacing.lg,
    );
    return _BottomBarIcon(
      icon: icon,
      badge: badge,
      isSelected: isSelected,
      onTap: onTap,
    );
  }

  final Widget icon;
  final Badge? badge;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: FOXSYSSpacing.xxxlg,
        height: FOXSYSSpacing.xxxlg,
        decoration: isSelected
            ? BoxDecoration(
                gradient: FOXSYSColors.whiteGradient,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
                boxShadow: [
                  FOXSYSShadows.lightHard,
                ],
              )
            : null,
        child: Stack(
          children: [
            Center(child: icon),
            Positioned(
              top: 16,
              right: 12,
              child: badge ?? const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
