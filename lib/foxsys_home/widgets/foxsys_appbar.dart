import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foxsys_test/foxsys_home/foxsys_home.dart';
import 'package:foxsys_ui/foxsys_ui.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2.9);

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key});

  @override
  Widget build(BuildContext context) {
    final appBarDisplayed =
        context.select((FoxsysHomeBloc bloc) => bloc.state.appDisplayed);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      curve: Curves.elasticOut,
      height: appBarDisplayed ? kToolbarHeight * 3.9 : kToolbarHeight * 2.9,
      decoration: BoxDecoration(
        color: FOXSYSColors.white,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        border: Border.all(
          color: FOXSYSColors.light2,
        ),
        boxShadow: [
          FOXSYSShadows.lightTopBar,
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 62, right: 20, left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: FoxsysUIImages.foxsysLogo(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: appBarDisplayed
                            ? BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FOXSYSColors.purple,
                                ),
                              )
                            : null,
                        child: CircleAvatar(
                          radius: 24,
                          backgroundColor: FOXSYSColors.light1,
                          child: IconButton(
                            onPressed: () => context.read<FoxsysHomeBloc>().add(
                                  const FoxsysHomeAppDisplayed(),
                                ),
                            icon: Icon(
                              appBarDisplayed
                                  ? Icons.keyboard_arrow_up_sharp
                                  : Icons.keyboard_arrow_down_sharp,
                            ),
                            iconSize: 28,
                            color: FOXSYSColors.purpleDark,
                          ),
                        ),
                      ),
                      const SizedBox(width: FOXSYSSpacing.lg),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Buenas tardes,',
                            style: FOXSYSTextStyle.caption
                                .copyWith(color: FOXSYSColors.dark4),
                          ),
                          Text(
                            'Juan L.',
                            style: FOXSYSTextStyle.subtitle1.copyWith(
                              fontWeight: FOXSYSFontWeight.bold,
                              color: FOXSYSColors.dark1,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FOXSYSColors.purple,
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: FoxsysUIImages.profile(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: FOXSYSSpacing.lg),
              if (appBarDisplayed) ...[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FoxsysAppBarDropDown(
                          items: const ['Marigott Office'],
                          value: 'Marigott Office',
                          onChanged: (value) {},
                          width: context.screenWidth * 0.5,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FOXSYSColors.light2,
                              width: 1.0,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton.outlined(
                            onPressed: () {},
                            icon: FoxsysUIImages.settings(
                                color: FOXSYSColors.purpleDark,
                                size: const Size(24, 24)),
                          ),
                        ),
                        const SizedBox(width: FOXSYSSpacing.lg),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: FOXSYSColors.light2,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: FoxsysUIImages.exit(
                              color: FOXSYSColors.purpleDark,
                              size: const Size(24, 24),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
